import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:backend/utils/professional_background_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:prisma_flutter_connector/runtime_server.dart';

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
    final userId = getUserIdFromToken(context);
    if (userId == null) {
      return Response.json(
        statusCode: HttpStatus.unauthorized,
        body: {
          'error': {'message': 'Unauthorized'},
        },
      );
    }

    // Parse request body
    final data = await context.request.json() as Map<String, dynamic>;

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

    // Validate enum-typed fields up front so bad values return a clean 400
    // instead of bubbling up as a raw database error
    final consulteeProfileData =
        data['consulteeProfile'] as Map<String, dynamic>?;
    final enumError = _validateEnumField(
          'personalInfo.gender',
          personalInfo['gender'],
          const {'MALE', 'FEMALE', 'NON_BINARY', 'PREFER_NOT_TO_SAY'},
        ) ??
        _validateEnumField(
          'consulteeProfile.careerStage',
          consulteeProfileData?['careerStage'],
          const {
            'SCHOOL_STUDENT',
            'STUDENT',
            'EARLY_CAREER',
            'MID_CAREER',
            'SENIOR',
            'EXECUTIVE',
          },
        ) ??
        _validateEnumField(
          'consulteeProfile.budgetPreference',
          consulteeProfileData?['budgetPreference'],
          const {'BUDGET', 'MODERATE', 'PREMIUM', 'FLEXIBLE'},
        );
    if (enumError != null) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {'message': enumError},
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
  } on FormatException catch (_) {
    return Response.json(
      statusCode: HttpStatus.badRequest,
      body: {
        'error': {'message': 'Invalid request body format'},
      },
    );
  } catch (e, stackTrace) {
    await SentryLogger.severe(
      'Onboarding submission failed',
      context: 'OnboardingSubmit',
      error: e,
      stackTrace: stackTrace,
    );

    // Do not echo raw database errors to clients
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Failed to complete onboarding'},
      },
    );
  }
}

/// Returns an error message when [value] is present but not one of
/// [allowed]; null when the value is absent or valid. Accepts Object? so
/// non-string payload values (e.g. numbers) report a clean 400 instead of
/// a TypeError-driven 500.
String? _validateEnumField(String field, Object? value, Set<String> allowed) {
  if (value == null) return null;
  if (value is String && allowed.contains(value)) return null;
  return 'Invalid value for $field: "$value". '
      'Allowed: ${allowed.join(', ')}';
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

    // Create professional background records if provided
    await ProfessionalBackgroundUtils.createRecords(
      userId: userId,
      txn: txn,
      workExperiences:
          consultantProfile['workExperiences'] as List<dynamic>?,
      education: consultantProfile['education'] as List<dynamic>?,
      certifications:
          consultantProfile['certifications'] as List<dynamic>?,
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
