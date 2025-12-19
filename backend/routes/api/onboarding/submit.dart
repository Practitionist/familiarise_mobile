import 'dart:convert';
import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/services/jwt_service.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:dart_frog/dart_frog.dart';

/// POST /api/onboarding/submit
///
/// Submits the complete onboarding data for a user.
/// Creates/updates the profile and marks onboarding as complete.
///
/// Request body:
/// ```json
/// {
///   "role": "CONSULTEE" | "CONSULTANT",
///   "personalInfo": {
///     "name": "string",
///     "phone": "string?",
///     "dateOfBirth": "ISO8601",
///     "gender": "MALE" | "FEMALE" | "NON_BINARY" | "PREFER_NOT_TO_SAY",
///     "timezone": "string",
///     "image": "string? (URL)",
///     "city": "string?",
///     "country": "string?",
///     "address": "string?",
///     "linkedinUrl": "string?",
///     "bio": "string?"
///   },
///   "consulteeProfile": { ... },  // Only if CONSULTEE
///   "consultantProfile": { ... }, // Only if CONSULTANT
///   "agreement": {
///     "termsAccepted": true,
///     "privacyAccepted": true,
///     "acceptedAt": "ISO8601"
///   }
/// }
/// ```
Future<Response> onRequest(RequestContext context) async {
  // Only allow POST requests
  if (context.request.method != HttpMethod.post) {
    return Response(statusCode: HttpStatus.methodNotAllowed);
  }

  try {
    // Verify authentication
    final userId = await _getUserIdFromToken(context);
    if (userId == null) {
      return Response.json(
        statusCode: HttpStatus.unauthorized,
        body: {
          'error': {'message': 'Unauthorized'},
        },
      );
    }

    // Parse request body
    final body = await context.request.body();
    final data = jsonDecode(body) as Map<String, dynamic>;

    // Validate required fields
    final role = data['role'] as String?;
    final personalInfo = data['personalInfo'] as Map<String, dynamic>?;
    final agreement = data['agreement'] as Map<String, dynamic>?;

    if (role == null || personalInfo == null || agreement == null) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {
            'message': 'Missing required fields: role, personalInfo, agreement',
          },
        },
      );
    }

    // Validate agreement
    final termsAccepted = agreement['termsAccepted'] as bool? ?? false;
    final privacyAccepted = agreement['privacyAccepted'] as bool? ?? false;
    if (!termsAccepted || !privacyAccepted) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {'message': 'Terms and privacy policy must be accepted'},
        },
      );
    }

    final db = context.read<DatabaseClient>();

    // Process based on role
    String? profileId;

    if (role == 'CONSULTEE') {
      final consulteeProfile =
          data['consulteeProfile'] as Map<String, dynamic>?;
      profileId = await _processConsulteeOnboarding(
        db,
        userId,
        personalInfo,
        consulteeProfile,
      );
    } else if (role == 'CONSULTANT') {
      final consultantProfile =
          data['consultantProfile'] as Map<String, dynamic>?;
      if (consultantProfile == null || consultantProfile['domainId'] == null) {
        return Response.json(
          statusCode: HttpStatus.badRequest,
          body: {
            'error': {'message': 'Consultant must select a domain'},
          },
        );
      }
      profileId = await _processConsultantOnboarding(
        db,
        userId,
        personalInfo,
        consultantProfile,
      );
    } else {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {'message': 'Invalid role. Must be CONSULTEE or CONSULTANT'},
        },
      );
    }

    // Get updated user
    final updatedUser = await db.users.findById(userId);
    if (updatedUser == null) {
      throw Exception('Failed to fetch updated user');
    }

    // Remove password from response
    updatedUser.remove('password');

    // Convert DateTime values to ISO8601 strings for JSON serialization
    final serializedUser = serializeForJson(updatedUser);

    return Response.json(
      body: {
        'success': true,
        'user': serializedUser,
        'profileId': profileId,
      },
    );
  } catch (e, stackTrace) {
    // ignore: avoid_print
    print('Error in POST /api/onboarding/submit: $e');
    // ignore: avoid_print
    print('Stack trace: $stackTrace');

    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Failed to complete onboarding: $e'},
      },
    );
  }
}

/// Extract user ID from JWT token in Authorization header
Future<String?> _getUserIdFromToken(RequestContext context) async {
  final authHeader = context.request.headers['authorization'];
  if (authHeader == null || !authHeader.startsWith('Bearer ')) {
    return null;
  }

  final token = authHeader.substring(7);
  final jwtService = context.read<JwtService>();
  final payload = jwtService.tryVerify(token);

  return payload?['userId'] as String?;
}

/// Process consultee onboarding
Future<String> _processConsulteeOnboarding(
  DatabaseClient db,
  String userId,
  Map<String, dynamic> personalInfo,
  Map<String, dynamic>? consulteeProfile,
) async {
  return db.executeInTransaction((txn) async {
    // Upsert consultee profile
    final profile = await db.consulteeProfiles.upsert(
      userId: userId,
      occupation: consulteeProfile?['occupation'] as String?,
      aboutMe: consulteeProfile?['aboutMe'] as String?,
      careerStage: consulteeProfile?['careerStage'] as String?,
      currentCompany: consulteeProfile?['currentCompany'] as String?,
      industry: consulteeProfile?['industry'] as String?,
      skillsToDevelop: _parseStringList(consulteeProfile?['skillsToDevelop']),
      budgetPreference: consulteeProfile?['budgetPreference'] as String?,
      preferredCommunicationMethod:
          consulteeProfile?['preferredCommunicationMethod'] as String?,
      preferredLanguage: consulteeProfile?['preferredLanguage'] as String?,
      linkedinUrl: consulteeProfile?['linkedinUrl'] as String?,
      txn: txn,
    );

    final profileId = profile['id'] as String;

    // Update user with personal info and mark onboarding complete
    await db.users.updateForOnboarding(
      id: userId,
      role: 'CONSULTEE',
      name: personalInfo['name'] as String,
      onboardingCompleted: true,
      phone: personalInfo['phone'] as String?,
      dateOfBirth: _parseDateTime(personalInfo['dateOfBirth']),
      gender: personalInfo['gender'] as String?,
      timezone: personalInfo['timezone'] as String?,
      image: personalInfo['image'] as String?,
      city: personalInfo['city'] as String?,
      country: personalInfo['country'] as String?,
      address: personalInfo['address'] as String?,
      linkedinUrl: personalInfo['linkedinUrl'] as String?,
      bio: personalInfo['bio'] as String?,
      consulteeProfileId: profileId,
      txn: txn,
    );

    return profileId;
  });
}

/// Process consultant onboarding
Future<String> _processConsultantOnboarding(
  DatabaseClient db,
  String userId,
  Map<String, dynamic> personalInfo,
  Map<String, dynamic> consultantProfile,
) async {
  return db.executeInTransaction((txn) async {
    // Upsert consultant profile
    final profile = await db.consultantProfiles.upsert(
      userId: userId,
      domainId: consultantProfile['domainId'] as String,
      experience: (consultantProfile['experience'] as num?)?.toDouble(),
      description: consultantProfile['description'] as String?,
      headline: consultantProfile['headline'] as String?,
      languages: _parseStringList(consultantProfile['languages']),
      toolsAndTechnologies:
          _parseStringList(consultantProfile['toolsAndTechnologies']),
      mentoringStyle: consultantProfile['mentoringStyle'] as String?,
      sessionTypes: _parseStringList(consultantProfile['sessionTypes']),
      scheduleType: 'WEEKLY', // Default - slots set on web
      websiteUrl: consultantProfile['websiteUrl'] as String?,
      twitterUrl: consultantProfile['twitterUrl'] as String?,
      githubUrl: consultantProfile['githubUrl'] as String?,
      videoIntroUrl: consultantProfile['videoIntroUrl'] as String?,
      txn: txn,
    );

    final profileId = profile['id'] as String;

    // Update subdomain relations if provided
    final subDomainIds = _parseStringList(consultantProfile['subDomainIds']);
    if (subDomainIds != null && subDomainIds.isNotEmpty) {
      await db.consultantProfiles.updateSubDomains(
        profileId: profileId,
        subDomainIds: subDomainIds,
        txn: txn,
      );
    }

    // Update user with personal info and mark onboarding complete
    await db.users.updateForOnboarding(
      id: userId,
      role: 'CONSULTANT',
      name: personalInfo['name'] as String,
      onboardingCompleted: true,
      phone: personalInfo['phone'] as String?,
      dateOfBirth: _parseDateTime(personalInfo['dateOfBirth']),
      gender: personalInfo['gender'] as String?,
      timezone: personalInfo['timezone'] as String?,
      image: personalInfo['image'] as String?,
      city: personalInfo['city'] as String?,
      country: personalInfo['country'] as String?,
      address: personalInfo['address'] as String?,
      linkedinUrl: personalInfo['linkedinUrl'] as String?,
      bio: personalInfo['bio'] as String?,
      consultantProfileId: profileId,
      txn: txn,
    );

    return profileId;
  });
}

/// Parse a value as List<String>
List<String>? _parseStringList(dynamic value) {
  if (value == null) return null;
  if (value is List) {
    return value.map((e) => e.toString()).toList();
  }
  return null;
}

/// Parse a value as DateTime
DateTime? _parseDateTime(dynamic value) {
  if (value == null) return null;
  if (value is String) {
    return DateTime.tryParse(value);
  }
  return null;
}
