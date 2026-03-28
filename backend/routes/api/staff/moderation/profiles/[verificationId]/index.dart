import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:prisma_flutter_connector/runtime_server.dart';

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
        body: {
          'error': {'message': 'Unauthorized'}
        },
      );
    }

    final db = context.read<DatabaseClient>();

    // Verify staff role
    final user = await db.users.findById(userId);
    final role = user?['role'] as String?;
    if (role != 'STAFF' && role != 'ADMIN') {
      return Response.json(
        statusCode: HttpStatus.forbidden,
        body: {
          'error': {'message': 'Staff access required'}
        },
      );
    }

    final verificationQuery = JsonQueryBuilder()
        .model('ConsultantProfileVerification')
        .action(QueryAction.findUnique)
        .where({'id': verificationId}).build();
    final verification =
        await db.executor.executeQueryAsSingleMap(verificationQuery);

    if (verification == null) {
      return Response.json(
        statusCode: HttpStatus.notFound,
        body: {
          'error': {'message': 'Verification not found'},
        },
      );
    }

    final docs = await db.consultantVerifications.getDocuments(verificationId);

    final json = serializeForJson(verification);
    json['documents'] = docs.map(serializeForJson).toList();

    final consultantProfileId = verification['consultantProfileId'] as String?;
    if (consultantProfileId != null) {
      final profileQuery = JsonQueryBuilder()
          .model('ConsultantProfile')
          .action(QueryAction.findUnique)
          .where({'id': consultantProfileId}).build();
      final profile = await db.executor.executeQueryAsSingleMap(profileQuery);
      final consultantUserId = profile?['userId'] as String?;
      if (consultantUserId != null) {
        final consultantUser = await db.users.findById(consultantUserId);
        json['consultantName'] = consultantUser?['name'];
        json['consultantEmail'] = consultantUser?['email'];
      }
    }

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
        body: {
          'error': {'message': 'Unauthorized'}
        },
      );
    }

    final db = context.read<DatabaseClient>();
    final user = await db.users.findById(userId);
    final role = user?['role'] as String?;
    if (role != 'STAFF' && role != 'ADMIN') {
      return Response.json(
        statusCode: HttpStatus.forbidden,
        body: {
          'error': {'message': 'Staff access required'}
        },
      );
    }

    final body = await context.request.json() as Map<String, dynamic>;
    final statusStr = body['status'] as String?;

    if (statusStr == null) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {'message': 'status is required'}
        },
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

    final existingQuery = JsonQueryBuilder()
        .model('ConsultantProfileVerification')
        .action(QueryAction.findUnique)
        .where({'id': verificationId}).build();
    final existing = await db.executor.executeQueryAsSingleMap(existingQuery);

    if (existing == null) {
      return Response.json(
        statusCode: HttpStatus.notFound,
        body: {
          'error': {'message': 'Verification not found'},
        },
      );
    }

    final now = DateTime.now().toUtc().toIso8601String();
    final updateData = <String, dynamic>{
      'status': status.name.toUpperCase(),
      'reviewedAt': now,
      'reviewedById': userId,
      'updatedAt': now,
    };
    if (body.containsKey('reviewNotes')) {
      updateData['reviewNotes'] = body['reviewNotes'];
    }
    if (body.containsKey('rejectionReason')) {
      updateData['rejectionReason'] = body['rejectionReason'];
    }
    if (body.containsKey('feedbackDetails')) {
      updateData['feedbackDetails'] = body['feedbackDetails'];
    }

    final updateQuery = JsonQueryBuilder()
        .model('ConsultantProfileVerification')
        .action(QueryAction.update)
        .where({'id': verificationId})
        .data(updateData)
        .build();
    final updated = await db.executor.executeQueryAsSingleMap(updateQuery);

    final consultantProfileId = existing['consultantProfileId'] as String?;
    if (consultantProfileId != null) {
      final profileUpdate = <String, dynamic>{
        'updatedAt': now,
      };
      switch (status) {
        case ProfileVerificationStatus.approved:
          profileUpdate['isVerified'] = true;
          profileUpdate['verificationStatus'] = 'VERIFIED';
        case ProfileVerificationStatus.rejected:
          profileUpdate['isVerified'] = false;
          profileUpdate['verificationStatus'] = 'REJECTED';
        case ProfileVerificationStatus.needsInfo:
          profileUpdate['isVerified'] = false;
          profileUpdate['verificationStatus'] = 'UNDER_REVIEW';
        case ProfileVerificationStatus.pending:
        case ProfileVerificationStatus.superseded:
          break;
      }

      if (profileUpdate.length > 1) {
        final profileUpdateQuery = JsonQueryBuilder()
            .model('ConsultantProfile')
            .action(QueryAction.update)
            .where({'id': consultantProfileId})
            .data(profileUpdate)
            .build();
        await db.executor.executeMutation(profileUpdateQuery);
      }
    }

    return Response.json(
      body: {
        'data': updated != null ? serializeForJson(updated) : null,
      },
    );
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
