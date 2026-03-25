import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// GET /api/staff/moderation/profiles/:verificationId — Details
/// PUT /api/staff/moderation/profiles/:verificationId — Review
///
/// PUT body: { "status": "APPROVED"|"REJECTED"|"NEEDS_INFO",
///   "rejectionReason": "...", "feedbackDetails": "..." }
Future<Response> onRequest(
  RequestContext context,
  String verificationId,
) async {
  final method = context.request.method;

  if (method == HttpMethod.get) {
    return _handleGet(context, verificationId);
  }
  if (method == HttpMethod.put) {
    return _handlePut(context, verificationId);
  }

  return Response(statusCode: HttpStatus.methodNotAllowed);
}

Future<Response> _handleGet(
  RequestContext context,
  String verificationId,
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

    // Verify staff role
    final user = await db.users.findById(userId);
    final role = user?['role'] as String?;
    if (role != 'STAFF' && role != 'ADMIN') {
      return Response.json(
        statusCode: HttpStatus.forbidden,
        body: {'error': {'message': 'Staff access required'}},
      );
    }

    final verification =
        await db.consultantVerifications.findById(verificationId);

    if (verification == null) {
      return Response.json(
        statusCode: HttpStatus.notFound,
        body: {
          'error': {'message': 'Verification not found'},
        },
      );
    }

    final docs =
        await db.consultantVerifications.getDocuments(verificationId);

    final json = verification.toJson();
    json['documents'] = docs.map((d) => d.toJson()).toList();

    return Response.json(body: {'data': json});
  } catch (e, stackTrace) {
    await SentryLogger.severe(
      'Staff verification get failed',
      context: 'StaffVerificationGet',
      error: e,
      stackTrace: stackTrace,
    );
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Failed to get verification'},
      },
    );
  }
}

Future<Response> _handlePut(
  RequestContext context,
  String verificationId,
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
    final user = await db.users.findById(userId);
    final role = user?['role'] as String?;
    if (role != 'STAFF' && role != 'ADMIN') {
      return Response.json(
        statusCode: HttpStatus.forbidden,
        body: {'error': {'message': 'Staff access required'}},
      );
    }

    final body = await context.request.json() as Map<String, dynamic>;
    final statusStr = body['status'] as String?;

    if (statusStr == null) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {'error': {'message': 'status is required'}},
      );
    }

    final status = ProfileVerificationStatus.values
        .cast<ProfileVerificationStatus?>()
        .firstWhere(
          (s) => s!.name.toUpperCase() == statusStr.toUpperCase(),
          orElse: () => null,
        );

    if (status == null) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {
            'message': 'Invalid status: "$statusStr"',
          },
        },
      );
    }

    // Update via PrismaClient
    final updated = await db.prisma.consultantProfileVerification
        .update(
      where: ConsultantProfileVerificationWhereUniqueInput(
        id: verificationId,
      ),
      data: UpdateConsultantProfileVerificationInput(
        status: status,
        reviewedAt: DateTime.now().toUtc(),
        reviewedById: userId,
        rejectionReason: body['rejectionReason'] as String?,
        feedbackDetails: body['feedbackDetails'] as String?,
      ),
    );

    return Response.json(body: {'data': updated.toJson()});
  } catch (e, stackTrace) {
    await SentryLogger.severe(
      'Staff verification review failed',
      context: 'StaffVerificationPut',
      error: e,
      stackTrace: stackTrace,
    );
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Failed to review verification'},
      },
    );
  }
}
