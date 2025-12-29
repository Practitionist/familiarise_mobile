import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:prisma_flutter_connector/runtime_server.dart';

/// Checkout verification endpoint
///
/// GET /api/checkout/verify - Verify payment and update booking status
Future<Response> onRequest(RequestContext context) async {
  final method = context.request.method;
  if (method == HttpMethod.get) {
    return _handleVerifyPayment(context);
  }
  return Response(statusCode: HttpStatus.methodNotAllowed);
}

/// GET /api/checkout/verify
///
/// Verify payment status after gateway callback.
///
/// Query Parameters:
/// - payment_intent: The payment ID (required)
/// - razorpay_payment_id: Razorpay payment ID (optional)
/// - razorpay_signature: Razorpay signature for verification (optional)
///
/// Response:
/// ```json
/// {
///   "success": true,
///   "paymentStatus": "SUCCEEDED",
///   "appointmentId": "uuid",
///   "bookingType": "CONSULTATION",
///   "message": "Payment successful",
///   "consultantName": "John Doe",
///   "planTitle": "1-Hour Consultation",
///   "scheduledAt": "2024-01-15T09:00:00Z"
/// }
/// ```
Future<Response> _handleVerifyPayment(RequestContext context) async {
  try {
    // Verify authentication
    final userId = getUserIdFromToken(context);
    if (userId == null) {
      return Response.json(
        statusCode: HttpStatus.unauthorized,
        body: {'error': {'message': 'Unauthorized'}},
      );
    }

    final params = context.request.uri.queryParameters;
    final paymentIntent = params['payment_intent'];

    if (paymentIntent == null || paymentIntent.isEmpty) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {'error': {'message': 'payment_intent is required'}},
      );
    }

    final db = context.read<DatabaseClient>();

    // Find payment by payment intent
    final paymentQuery = JsonQueryBuilder()
        .model('Payment')
        .action(QueryAction.findFirst)
        .where({'paymentIntent': paymentIntent})
        .build();
    final payment = await db.executor.executeQueryAsSingleMap(paymentQuery);

    if (payment == null) {
      return Response.json(
        statusCode: HttpStatus.notFound,
        body: {
          'success': false,
          'paymentStatus': 'FAILED',
          'message': 'Payment not found',
        },
      );
    }

    final paymentId = payment['id'] as String;
    final appointmentId = payment['appointmentId'] as String?;
    final currentStatus = payment['paymentStatus'] as String?;

    // If already processed, return current status
    if (currentStatus == 'SUCCEEDED' || currentStatus == 'FAILED') {
      return _buildVerificationResponse(
        db,
        payment,
        currentStatus == 'SUCCEEDED',
      );
    }

    // For Razorpay, verify signature
    final razorpayPaymentId = params['razorpay_payment_id'];
    // TODO(payment): Implement Razorpay signature verification in production
    // final razorpaySignature = params['razorpay_signature'];

    // In production, verify the Razorpay signature here
    // For now, we'll trust the callback and mark as succeeded
    final isVerified = razorpayPaymentId != null;

    if (isVerified) {
      // Update payment status to SUCCEEDED
      await db.checkout.updatePaymentStatus(
        paymentId: paymentId,
        status: 'SUCCEEDED',
      );

      // Update booking status based on type
      if (appointmentId != null) {
        // Get appointment to find booking
        final appointmentQuery = JsonQueryBuilder()
            .model('Appointment')
            .action(QueryAction.findUnique)
            .where({'id': appointmentId})
            .build();
        final appointment =
            await db.executor.executeQueryAsSingleMap(appointmentQuery);

        if (appointment != null) {
          final consultationId = appointment['consultationId'] as String?;
          final subscriptionId = appointment['subscriptionId'] as String?;

          if (consultationId != null) {
            // Update consultation status to SCHEDULED
            await db.checkout.updateBookingStatus(
              bookingId: consultationId,
              bookingType: 'CONSULTATION',
              status: 'SCHEDULED',
            );

            // Confirm slots (mark as non-tentative)
            await db.checkout.confirmSlots(consultationId);
          } else if (subscriptionId != null) {
            // Update subscription status to SCHEDULED
            await db.checkout.updateBookingStatus(
              bookingId: subscriptionId,
              bookingType: 'SUBSCRIPTION',
              status: 'SCHEDULED',
            );
          }
        }
      }

      // Refresh payment data
      final updatedPayment = await db.checkout.getPaymentById(paymentId);

      return _buildVerificationResponse(db, updatedPayment ?? payment, true);
    }

    // Verification failed (razorpay_payment_id not provided)
    await db.checkout.updatePaymentStatus(
      paymentId: paymentId,
      status: 'FAILED',
    );

    return Response.json(
      body: serializeForJson({
        'success': false,
        'paymentStatus': 'FAILED',
        'message': 'Payment verification failed',
      }),
    );
  } catch (e, stackTrace) {
    SentryLogger.error(
      'Error in GET /api/checkout/verify',
      context: 'CheckoutVerifyRoute',
      error: e,
      stackTrace: stackTrace,
    );

    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {
          'message': 'Failed to verify payment',
          'details': e.toString(),
        },
      },
    );
  }
}

/// Build verification response with booking details
Future<Response> _buildVerificationResponse(
  DatabaseClient db,
  Map<String, dynamic> payment,
  bool success,
) async {
  final appointmentId = payment['appointmentId'] as String?;
  String? bookingType;
  String? consultantName;
  String? planTitle;
  String? scheduledAt;

  if (appointmentId != null) {
    // Get appointment details
    final appointmentQuery = JsonQueryBuilder()
        .model('Appointment')
        .action(QueryAction.findUnique)
        .where({'id': appointmentId})
        .build();
    final appointment =
        await db.executor.executeQueryAsSingleMap(appointmentQuery);

    if (appointment != null) {
      final consultationId = appointment['consultationId'] as String?;
      final subscriptionId = appointment['subscriptionId'] as String?;

      if (consultationId != null) {
        bookingType = 'CONSULTATION';

        // Get consultation with plan
        final booking = await db.checkout.getBookingById(
          consultationId,
          'CONSULTATION',
        );

        if (booking != null) {
          final plan = booking['consultationPlan'] as Map<String, dynamic>?;
          planTitle = plan?['title'] as String?;

          final consultantProfile =
              plan?['consultantProfile'] as Map<String, dynamic>?;
          final user = consultantProfile?['user'] as Map<String, dynamic>?;
          consultantName = user?['name'] as String?;
        }

        // Get scheduled slot
        final slotsQuery = JsonQueryBuilder()
            .model('SlotOfAppointment')
            .action(QueryAction.findFirst)
            .where({'appointmentId': appointmentId})
            .orderBy({'startsAt': 'asc'})
            .build();
        final slot = await db.executor.executeQueryAsSingleMap(slotsQuery);
        if (slot != null) {
          scheduledAt = slot['startsAt']?.toString();
        }
      } else if (subscriptionId != null) {
        bookingType = 'SUBSCRIPTION';

        final booking = await db.checkout.getBookingById(
          subscriptionId,
          'SUBSCRIPTION',
        );

        if (booking != null) {
          final plan = booking['subscriptionPlan'] as Map<String, dynamic>?;
          planTitle = plan?['title'] as String?;

          final consultantProfile =
              plan?['consultantProfile'] as Map<String, dynamic>?;
          final user = consultantProfile?['user'] as Map<String, dynamic>?;
          consultantName = user?['name'] as String?;

          scheduledAt = booking['schedulingPeriodStartsAt']?.toString();
        }
      }
    }
  }

  return Response.json(
    body: serializeForJson({
      'success': success,
      'paymentStatus': success ? 'SUCCEEDED' : 'FAILED',
      if (appointmentId != null) 'appointmentId': appointmentId,
      if (bookingType != null) 'bookingType': bookingType,
      'message': success ? 'Payment successful' : 'Payment failed',
      if (consultantName != null) 'consultantName': consultantName,
      if (planTitle != null) 'planTitle': planTitle,
      if (scheduledAt != null) 'scheduledAt': scheduledAt,
    }),
  );
}
