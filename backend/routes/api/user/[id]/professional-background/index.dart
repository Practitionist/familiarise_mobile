import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/json_utils.dart';
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
    final now = DateTime.now().toUtc().toIso8601String();

    await db.executeInTransaction((txn) async {
      // Delete existing records
      for (final model in [
        'WorkExperience',
        'Education',
        'Certification',
      ]) {
        final deleteQuery = JsonQueryBuilder()
            .model(model)
            .action(QueryAction.deleteMany)
            .where({'userId': userId})
            .build();
        await txn.executeMutation(deleteQuery);
      }

      // Re-create work experiences
      final workExperiences =
          body['workExperiences'] as List<dynamic>? ?? [];
      for (final we in workExperiences) {
        final item = we as Map<String, dynamic>;
        final query = JsonQueryBuilder()
            .model('WorkExperience')
            .action(QueryAction.create)
            .data({
          'userId': userId,
          'company': item['company'],
          'companyDomain': item['companyDomain'],
          'title': item['title'],
          'location': item['location'],
          'startDate': item['startDate'],
          'endDate': item['endDate'],
          'isCurrent': item['isCurrent'] ?? false,
          'description': item['description'],
          'createdAt': now,
          'updatedAt': now,
        }).build();
        await txn.executeMutation(query);
      }

      // Re-create education
      final education = body['education'] as List<dynamic>? ?? [];
      for (final edu in education) {
        final item = edu as Map<String, dynamic>;
        final query = JsonQueryBuilder()
            .model('Education')
            .action(QueryAction.create)
            .data({
          'userId': userId,
          'institution': item['institution'],
          'institutionDomain': item['institutionDomain'],
          'degree': item['degree'],
          'fieldOfStudy': item['fieldOfStudy'],
          'startYear': item['startYear'],
          'endYear': item['endYear'],
          'grade': item['grade'],
          'activities': item['activities'],
          'description': item['description'],
          'createdAt': now,
          'updatedAt': now,
        }).build();
        await txn.executeMutation(query);
      }

      // Re-create certifications
      final certifications =
          body['certifications'] as List<dynamic>? ?? [];
      for (final cert in certifications) {
        final item = cert as Map<String, dynamic>;
        final query = JsonQueryBuilder()
            .model('Certification')
            .action(QueryAction.create)
            .data({
          'userId': userId,
          'name': item['name'],
          'issuingOrganization': item['issuingOrganization'],
          'issueDate': item['issueDate'],
          'expiryDate': item['expiryDate'],
          'credentialId': item['credentialId'],
          'credentialUrl': item['credentialUrl'],
          'createdAt': now,
          'updatedAt': now,
        }).build();
        await txn.executeMutation(query);
      }
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
