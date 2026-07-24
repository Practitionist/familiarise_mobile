import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

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

    final workExperiences = await db.prisma.workExperience.findMany(
      where: WorkExperienceWhereInput(userId: StringFilter(equals: userId)),
    );

    final education = await db.prisma.education.findMany(
      where: EducationWhereInput(userId: StringFilter(equals: userId)),
    );

    final certifications = await db.prisma.certification.findMany(
      where: CertificationWhereInput(userId: StringFilter(equals: userId)),
    );

    return Response.json(
      body: {
        'data': {
          'workExperiences':
              workExperiences.map((w) => serializeForJson(w.toJson())).toList(),
          'education':
              education.map((e) => serializeForJson(e.toJson())).toList(),
          'certifications':
              certifications.map((c) => serializeForJson(c.toJson())).toList(),
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

    // Replace all records atomically: delete existing, then re-create from
    // the request body (typed delegates inside a $transaction).
    await db.prisma.$transaction((tx) async {
      await tx.workExperience.deleteMany(
        where: WorkExperienceWhereInput(userId: StringFilter(equals: userId)),
      );
      await tx.education.deleteMany(
        where: EducationWhereInput(userId: StringFilter(equals: userId)),
      );
      await tx.certification.deleteMany(
        where: CertificationWhereInput(userId: StringFilter(equals: userId)),
      );

      final workExperiences = body['workExperiences'] as List<dynamic>?;
      if (workExperiences != null) {
        for (final we in workExperiences) {
          final item = we as Map<String, dynamic>;
          await tx.workExperience.create(
            data: CreateWorkExperienceInput(
              userId: userId,
              company: item['company'] as String,
              companyDomain: item['companyDomain'] as String?,
              title: item['title'] as String,
              location: item['location'] as String?,
              startDate: DateTime.parse(item['startDate'] as String),
              endDate: item['endDate'] != null
                  ? DateTime.parse(item['endDate'] as String)
                  : null,
              isCurrent: (item['isCurrent'] as bool?) ?? false,
              description: item['description'] as String?,
            ),
          );
        }
      }

      final education = body['education'] as List<dynamic>?;
      if (education != null) {
        for (final edu in education) {
          final item = edu as Map<String, dynamic>;
          await tx.education.create(
            data: CreateEducationInput(
              userId: userId,
              institution: item['institution'] as String,
              institutionDomain: item['institutionDomain'] as String?,
              degree: item['degree'] as String,
              fieldOfStudy: item['fieldOfStudy'] as String?,
              startYear: (item['startYear'] as num?)?.toInt(),
              endYear: (item['endYear'] as num?)?.toInt(),
              grade: item['grade'] as String?,
              activities: item['activities'] as String?,
              description: item['description'] as String?,
            ),
          );
        }
      }

      final certifications = body['certifications'] as List<dynamic>?;
      if (certifications != null) {
        for (final cert in certifications) {
          final item = cert as Map<String, dynamic>;
          await tx.certification.create(
            data: CreateCertificationInput(
              userId: userId,
              name: item['name'] as String,
              issuingOrganization: item['issuingOrganization'] as String,
              issueDate: DateTime.parse(item['issueDate'] as String),
              expiryDate: item['expiryDate'] != null
                  ? DateTime.parse(item['expiryDate'] as String)
                  : null,
              credentialId: item['credentialId'] as String?,
              credentialUrl: item['credentialUrl'] as String?,
            ),
          );
        }
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
