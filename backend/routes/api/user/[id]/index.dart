import 'dart:convert';
import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// PUT /api/user/:id
///
/// Updates the authenticated user's profile fields.
///
/// Request body (all fields optional):
/// ```json
/// {
///   "name": "string",
///   "phone": "string",
///   "image": "string (URL)",
///   "bio": "string",
///   "dateOfBirth": "ISO8601 string",
///   "gender": "MALE" | "FEMALE" | "NON_BINARY" | "PREFER_NOT_TO_SAY",
///   "city": "string",
///   "country": "string",
///   "address": "string",
///   "linkedinUrl": "string (URL)",
///   "timezone": "string"
/// }
/// ```
///
/// Returns the updated user object in `{ "data": { ... } }`.
Future<Response> onRequest(RequestContext context, String id) async {
  if (context.request.method != HttpMethod.put) {
    return Response(statusCode: HttpStatus.methodNotAllowed);
  }

  try {
    // Verify authentication
    final userId = getUserIdFromToken(context);
    if (userId == null) {
      return Response.json(
        statusCode: HttpStatus.unauthorized,
        body: {
          'error': {'message': 'Unauthorized'},
        },
      );
    }

    // Users can only update their own profile
    if (userId != id) {
      return Response.json(
        statusCode: HttpStatus.forbidden,
        body: {
          'error': {'message': 'You can only update your own profile'},
        },
      );
    }

    // Parse request body
    final body = await context.request.body();
    if (body.isEmpty) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {'message': 'Request body is required'},
        },
      );
    }

    final data = jsonDecode(body) as Map<String, dynamic>;

    // Extract allowed fields
    final name = data['name'] as String?;
    final phone = data['phone'] as String?;
    final image = data['image'] as String?;
    final bio = data['bio'] as String?;
    final dateOfBirth = data['dateOfBirth'] as String?;
    final gender = data['gender'] as String?;
    final city = data['city'] as String?;
    final country = data['country'] as String?;
    final address = data['address'] as String?;
    final linkedinUrl = data['linkedinUrl'] as String?;
    final timezone = data['timezone'] as String?;

    // Validate name if provided (must not be empty)
    if (name != null && name.trim().isEmpty) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {'message': 'Name cannot be empty'},
        },
      );
    }

    // Validate gender enum if provided
    if (gender != null) {
      const validGenders = [
        'MALE',
        'FEMALE',
        'NON_BINARY',
        'PREFER_NOT_TO_SAY',
      ];
      if (!validGenders.contains(gender)) {
        return Response.json(
          statusCode: HttpStatus.badRequest,
          body: {
            'error': {'message': 'Invalid gender value'},
          },
        );
      }
    }

    // Validate dateOfBirth if provided
    if (dateOfBirth != null && DateTime.tryParse(dateOfBirth) == null) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {'message': 'Invalid date of birth format'},
        },
      );
    }

    final db = context.read<DatabaseClient>();

    // Update user
    final updatedUser = await db.users.update(
      id: id,
      name: name,
      phone: phone,
      image: image,
      bio: bio,
      dateOfBirth: dateOfBirth,
      gender: gender,
      city: city,
      country: country,
      address: address,
      linkedinUrl: linkedinUrl,
      timezone: timezone,
    );

    if (updatedUser == null) {
      return Response.json(
        statusCode: HttpStatus.notFound,
        body: {
          'error': {'message': 'User not found'},
        },
      );
    }

    // Remove sensitive fields
    updatedUser.remove('password');

    final serializedUser = serializeForJson(updatedUser);

    return Response.json(
      body: {'data': serializedUser},
    );
  } catch (e, stackTrace) {
    await SentryLogger.severe(
      'Failed to update user profile',
      context: 'UserUpdateRoute',
      error: e,
      stackTrace: stackTrace,
    );

    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Failed to update profile'},
      },
    );
  }
}
