import 'dart:io' as io;

import 'package:backend/database/database_client.dart';
import 'package:backend/services/razorpay_service.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:dotenv/dotenv.dart';

/// Checkout verification endpoint
///
/// GET /api/checkout/verify - Verify payment and update booking status
Future<Response> onRequest(RequestContext context) async {
  final method = context.request.method;
  if (method == HttpMethod.get) {
    return _handleVerifyPayment(context);
  }
  return Response(statusCode: io.HttpStatus.methodNotAllowed);
}

/// GET /api/checkout/verify
///
/// Verify payment status after gateway callback.
///
/// Query Parameters:
/// - payment_intent: The payment ID (required)
/// - razorpay_payment_id: Razorpay payment ID (required for Razorpay)
/// - razorpay_order_id: Razorpay order ID (required for Razorpay)
/// - razorpay_signature: Razorpay signature for verification (required for Razorpay)
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
        statusCode: io.HttpStatus.unauthorized,
        body: {
          'error': {'message': 'Unauthorized'}
        },
      );
    }

    final params = context.request.uri.queryParameters;
    final paymentIntent = params['payment_intent'];

    if (paymentIntent == null || paymentIntent.isEmpty) {
      return Response.json(
        statusCode: io.HttpStatus.badRequest,
        body: {
          'error': {'message': 'payment_intent is required'}
        },
      );
    }

    final db = context.read<DatabaseClient>();

    // BUG FIX: Frontend sends payment UUID as payment_intent param.
    // Look up by primary key `id`, not by `paymentIntent` field.
    final paymentRecord = await db.prisma.payment.findUnique(
      where: PaymentWhereUniqueInput(id: paymentIntent),
    );

    if (paymentRecord == null) {
      return Response.json(
        statusCode: io.HttpStatus.notFound,
        body: {
          'success': false,
          'paymentStatus': 'FAILED',
          'message': 'Payment not found',
        },
      );
    }

    final payment = paymentRecord.toJson();

    // Verify the payment belongs to the authenticated user
    final paymentUserId = payment['userId'] as String?;
    if (paymentUserId != userId) {
      return Response.json(
        statusCode: io.HttpStatus.notFound,
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
    final paymentGateway = payment['paymentGateway'] as String?;

    // If already processed, return current status
    if (currentStatus == 'SUCCEEDED' || currentStatus == 'FAILED') {
      return _buildVerificationResponse(
        db,
        payment,
        currentStatus == 'SUCCEEDED',
      );
    }

    // Gateway-specific verification
    if (paymentGateway == 'STRIPE') {
      // Stripe payments are verified via webhook — return current status.
      // PENDING means webhook hasn't arrived yet; don't mark as FAILED.
      return _buildVerificationResponse(
        db,
        payment,
        currentStatus == 'SUCCEEDED',
        pendingMessage: currentStatus == 'PENDING'
            ? 'Payment is being processed. Please wait a moment.'
            : null,
      );
    }

    // For Razorpay, verify signature cryptographically
    final razorpayPaymentId = params['razorpay_payment_id'];
    final razorpayOrderId = params['razorpay_order_id'];
    final razorpaySignature = params['razorpay_signature'];

    // Validate required Razorpay params
    if (razorpayPaymentId == null ||
        razorpayOrderId == null ||
        razorpaySignature == null) {
      return Response.json(
        statusCode: io.HttpStatus.badRequest,
        body: {
          'error': {
            'message': 'Missing Razorpay verification parameters '
                '(razorpay_payment_id, razorpay_order_id, razorpay_signature)',
          },
        },
      );
    }

    // BUG FIX: Use DotEnv instead of io.Platform.environment
    final env = context.read<DotEnv>();
    final razorpayKeySecret = env['RAZORPAY_KEY_SECRET'];
    if (razorpayKeySecret == null || razorpayKeySecret.isEmpty) {
      await SentryLogger.error(
        'RAZORPAY_KEY_SECRET not configured',
        context: 'CheckoutVerifyRoute',
      );
      return Response.json(
        statusCode: io.HttpStatus.internalServerError,
        body: {
          'error': {'message': 'Payment configuration error'}
        },
      );
    }

    // Verify signature using HMAC-SHA256
    final razorpayService = RazorpayService(
      keyId: '', // Not needed for verification
      keySecret: razorpayKeySecret,
    );
    final isVerified = razorpayService.verifyPaymentSignature(
      orderId: razorpayOrderId,
      paymentId: razorpayPaymentId,
      signature: razorpaySignature,
    );

    if (!isVerified) {
      SentryLogger.warning(
        'Razorpay signature verification failed for order=$razorpayOrderId',
        context: 'CheckoutVerifyRoute',
      );
      // Mark payment as failed
      await db.checkout.updatePaymentStatus(
        paymentId: paymentId,
        status: 'FAILED',
      );
      return Response.json(
        statusCode: io.HttpStatus.badRequest,
        body: {
          'error': {'message': 'Payment signature verification failed'},
        },
      );
    }

    // Signature verified - update payment status to SUCCEEDED
    await db.checkout.updatePaymentStatus(
      paymentId: paymentId,
      status: 'SUCCEEDED',
    );

    // Update booking status based on type
    if (appointmentId != null) {
      // Get appointment to find booking
      final appointment = await db.prisma.appointment.findUnique(
        where: AppointmentWhereUniqueInput(id: appointmentId),
      );

      if (appointment != null) {
        final consultationId = appointment.consultationId;
        final subscriptionId = appointment.subscriptionId;

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

    // Refresh payment data and return success
    final updatedPayment = await db.checkout.getPaymentById(paymentId);
    return _buildVerificationResponse(db, updatedPayment ?? payment, true);
  } catch (e, stackTrace) {
    await SentryLogger.error(
      'Error in GET /api/checkout/verify',
      context: 'CheckoutVerifyRoute',
      error: e,
      stackTrace: stackTrace,
    );

    return Response.json(
      statusCode: io.HttpStatus.internalServerError,
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
  bool success, {
  String? pendingMessage,
}) async {
  final appointmentId = payment['appointmentId'] as String?;
  String? bookingType;
  String? consultantName;
  String? planTitle;
  String? scheduledAt;

  if (appointmentId != null) {
    // Get appointment details
    final appointment = await db.prisma.appointment.findUnique(
      where: AppointmentWhereUniqueInput(id: appointmentId),
    );

    if (appointment != null) {
      final consultationId = appointment.consultationId;
      final subscriptionId = appointment.subscriptionId;

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
        final slot = await db.prisma.slotOfAppointment.findFirst(
          where: SlotOfAppointmentWhereInput(
            appointmentId: StringFilter(equals: appointmentId),
          ),
          orderBy: const SlotOfAppointmentOrderByInput(startsAt: SortOrder.asc),
        );
        if (slot != null) {
          scheduledAt = slot.startsAt.toString();
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
      'paymentStatus': success
          ? 'SUCCEEDED'
          : (pendingMessage != null ? 'PENDING' : 'FAILED'),
      if (appointmentId != null) 'appointmentId': appointmentId,
      if (bookingType != null) 'bookingType': bookingType,
      'message': pendingMessage ??
          (success ? 'Payment successful' : 'Payment failed'),
      if (consultantName != null) 'consultantName': consultantName,
      if (planTitle != null) 'planTitle': planTitle,
      if (scheduledAt != null) 'scheduledAt': scheduledAt,
    }),
  );
}
