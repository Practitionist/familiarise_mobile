import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/route_handlers/user_reserved_handlers.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// GET /api/user/:id — Retrieve user profile
/// PUT /api/user/:id — Update user profile
///
/// PUT request body (all fields optional):
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
///   "timezone": "string",
///   "profileDisplayImage": "string (URL)"
/// }
/// ```
///
/// Returns the user object in `{ "data": { ... } }`.
Future<Response> onRequest(RequestContext context, String id) async {
  if (id == 'profile-image') {
    return handleProfileImage(context);
  }
  if (id == 'profile-display-image') {
    return handleProfileDisplayImage(context);
  }

  final method = context.request.method;

  if (method == HttpMethod.get) {
    return _handleGet(context, id);
  } else if (method == HttpMethod.put) {
    return _handlePut(context, id);
  }

  return Response(statusCode: HttpStatus.methodNotAllowed);
}

/// Verify authentication and ownership. Returns the userId if valid,
/// or a [Response] to return early.
Object _authenticateOwner(RequestContext context, String id) {
  final userId = getUserIdFromToken(context);
  if (userId == null) {
    return Response.json(
      statusCode: HttpStatus.unauthorized,
      body: {
        'error': {'message': 'Unauthorized'},
      },
    );
  }
  if (userId != id) {
    return Response.json(
      statusCode: HttpStatus.forbidden,
      body: {
        'error': {'message': 'You can only access your own profile'},
      },
    );
  }
  return userId;
}

Future<Response> _handleGet(RequestContext context, String id) async {
  try {
    final authResult = _authenticateOwner(context, id);
    if (authResult is Response) return authResult;

    final db = context.read<DatabaseClient>();
    final user = await db.users.findById(id);

    if (user == null) {
      return Response.json(
        statusCode: HttpStatus.notFound,
        body: {
          'error': {'message': 'User not found'},
        },
      );
    }

    user.remove('password');
    return Response.json(body: {'data': serializeForJson(user)});
  } on ArgumentError catch (e) {
    return Response.json(
      statusCode: HttpStatus.badRequest,
      body: {
        'error': {'message': e.message?.toString() ?? 'Invalid input'},
      },
    );
  } catch (e, stackTrace) {
    await SentryLogger.severe(
      'Failed to get user profile',
      context: 'UserGetRoute',
      error: e,
      stackTrace: stackTrace,
    );

    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Failed to get profile'},
      },
    );
  }
}

Future<Response> _handlePut(RequestContext context, String id) async {
  try {
    final authResult = _authenticateOwner(context, id);
    if (authResult is Response) return authResult;

    // Parse request body
    final data = await context.request.json() as Map<String, dynamic>;

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
    final profileDisplayImage = data['profileDisplayImage'] as String?;

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
      profileDisplayImage: profileDisplayImage,
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
  } on FormatException catch (_) {
    return Response.json(
      statusCode: HttpStatus.badRequest,
      body: {
        'error': {'message': 'Invalid request body format'},
      },
    );
  } on ArgumentError catch (e) {
    return Response.json(
      statusCode: HttpStatus.badRequest,
      body: {
        'error': {'message': e.message?.toString() ?? 'Invalid input'},
      },
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
