import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// GET /api/consultant/profile — fetch own consultant profile
/// PATCH /api/consultant/profile — update consultant profile fields
Future<Response> onRequest(RequestContext context) async {
  final method = context.request.method;
  if (method == HttpMethod.get) {
    return _handleGet(context);
  } else if (method == HttpMethod.patch) {
    return _handlePatch(context);
  }
  return Response(statusCode: HttpStatus.methodNotAllowed);
}

/// GET /api/consultant/profile
Future<Response> _handleGet(RequestContext context) async {
  try {
    final userId = getUserIdFromToken(context);
    if (userId == null) {
      return Response.json(
        statusCode: HttpStatus.unauthorized,
        body: {'error': {'message': 'Unauthorized'}},
      );
    }

    final db = context.read<DatabaseClient>();
    final profile = await db.consultantProfiles.findByUserId(userId);

    if (profile == null) {
      return Response.json(
        statusCode: HttpStatus.notFound,
        body: {'error': {'message': 'Consultant profile not found'}},
      );
    }

    return Response.json(body: serializeForJson(profile));
  } catch (e, stackTrace) {
    await SentryLogger.error(
      'Error in GET /api/consultant/profile',
      context: 'ConsultantProfileRoute',
      error: e,
      stackTrace: stackTrace,
    );

    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {'error': {'message': 'Failed to fetch consultant profile'}},
    );
  }
}

/// PATCH /api/consultant/profile
///
/// Request body (all fields optional):
/// ```json
/// {
///   "headline": "string",
///   "experience": 5.0,
///   "description": "string",
///   "languages": ["English", "Hindi"],
///   "toolsAndTechnologies": ["Flutter", "React"],
///   "sessionTypes": ["ONE_ON_ONE", "GROUP"],
///   "mentoringStyle": "string",
///   "websiteUrl": "string",
///   "twitterUrl": "string",
///   "githubUrl": "string",
///   "videoIntroUrl": "string",
///   "subDomainIds": ["uuid", ...]
/// }
/// ```
Future<Response> _handlePatch(RequestContext context) async {
  try {
    final userId = getUserIdFromToken(context);
    if (userId == null) {
      return Response.json(
        statusCode: HttpStatus.unauthorized,
        body: {'error': {'message': 'Unauthorized'}},
      );
    }

    final db = context.read<DatabaseClient>();

    // Verify consultant profile exists
    final existing = await db.consultantProfiles.findByUserId(userId);
    if (existing == null) {
      return Response.json(
        statusCode: HttpStatus.notFound,
        body: {'error': {'message': 'Consultant profile not found'}},
      );
    }

    final data = await context.request.json() as Map<String, dynamic>;

    // Use the existing domainId from the profile (required by upsert)
    final domainId = existing['domainId'] as String;

    // Update profile via upsert
    final updated = await db.consultantProfiles.upsert(
      userId: userId,
      domainId: domainId,
      headline: data['headline'] as String?,
      experience: (data['experience'] as num?)?.toDouble(),
      description: data['description'] as String?,
      languages: _parseStringList(data['languages']),
      toolsAndTechnologies: _parseStringList(data['toolsAndTechnologies']),
      sessionTypes: _parseStringList(data['sessionTypes']),
      mentoringStyle: data['mentoringStyle'] as String?,
      websiteUrl: data['websiteUrl'] as String?,
      twitterUrl: data['twitterUrl'] as String?,
      githubUrl: data['githubUrl'] as String?,
      videoIntroUrl: data['videoIntroUrl'] as String?,
    );

    // Handle subdomain updates if provided
    final subDomainIds = _parseStringList(data['subDomainIds']);
    if (subDomainIds != null && subDomainIds.isNotEmpty) {
      final profileId = updated['id'] as String;
      await db.consultantProfiles.updateSubDomains(
        profileId: profileId,
        subDomainIds: subDomainIds,
      );
    }

    return Response.json(body: serializeForJson(updated));
  } on FormatException catch (_) {
    return Response.json(
      statusCode: HttpStatus.badRequest,
      body: {
        'error': {'message': 'Invalid request body format'},
      },
    );
  } catch (e, stackTrace) {
    await SentryLogger.error(
      'Error in PATCH /api/consultant/profile',
      context: 'ConsultantProfileRoute',
      error: e,
      stackTrace: stackTrace,
    );

    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {'error': {'message': 'Failed to update consultant profile'}},
    );
  }
}

List<String>? _parseStringList(dynamic value) {
  if (value == null) return null;
  if (value is List) {
    return value.map((e) => e.toString()).toList();
  }
  return null;
}
