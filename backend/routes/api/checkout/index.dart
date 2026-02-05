import 'dart:io';

import 'package:backend/database/database_client.dart' hide Platform;
import 'package:backend/database/repositories/appointment_repository.dart';
import 'package:backend/services/razorpay_service.dart';
import 'package:backend/services/stripe_service.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:dotenv/dotenv.dart';
import 'package:prisma_flutter_connector/runtime_server.dart';


/// Checkout endpoints
///
/// POST /api/checkout - Create a checkout session
Future<Response> onRequest(RequestContext context) async {
  final method = context.request.method;
  if (method == HttpMethod.post) {
    return _handleCreateCheckout(context);
  }
  return Response(statusCode: HttpStatus.methodNotAllowed);
}

/// POST /api/checkout
///
/// Create a checkout session for payment processing.
///
/// Request body for existing booking (request-then-pay flow):
/// ```json
/// {
///   "bookingId": "uuid",
///   "appointmentType": "CONSULTATION" | "SUBSCRIPTION",
///   "paymentGateway": "RAZORPAY" | "STRIPE",
///   "discountCode": "optional-code"
/// }
/// ```
///
/// Request body for direct checkout (no pre-created booking):
/// ```json
/// {
///   "consultantProfileId": "uuid",
///   "planId": "uuid",
///   "appointmentType": "CONSULTATION" | "SUBSCRIPTION",
///   "paymentGateway": "RAZORPAY" | "STRIPE",
///   "slotStartTimeInUTC": "2024-01-15T09:00:00Z",
///   "slotEndTimeInUTC": "2024-01-15T10:00:00Z",
///   "slotOfAvailabilityWeeklyId": "optional-uuid",
///   "schedulingPeriodStartsAt": "2024-01-15T00:00:00Z",
///   "schedulingPeriodEndsAt": "2024-02-15T00:00:00Z",
///   "discountCode": "optional-code",
///   "notes": "optional message"
/// }
/// ```
///
/// Response:
/// ```json
/// {
///   "paymentId": "uuid",
///   "gateway": "RAZORPAY",
///   "amount": 5000.0,
///   "currency": "INR",
///   "razorpayOrderId": "order_xxx",
///   "bookingId": "uuid",
///   "bookingType": "CONSULTATION"
/// }
/// ```
Future<Response> _handleCreateCheckout(RequestContext context) async {
  try {
    // Verify authentication
    final userId = getUserIdFromToken(context);
    if (userId == null) {
      return Response.json(
        statusCode: HttpStatus.unauthorized,
        body: {
          'error': {'message': 'Unauthorized'}
        },
      );
    }

    // Parse request body
    final data = await context.request.json() as Map<String, dynamic>;

    // Validate required fields
    final appointmentType = data['appointmentType'] as String?;
    final paymentGateway = data['paymentGateway'] as String?;

    if (appointmentType == null || paymentGateway == null) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {
            'code': 'MISSING_REQUIRED_FIELDS',
            'message':
                'Missing required fields: appointmentType, paymentGateway',
            'details': {
              'required': ['appointmentType', 'paymentGateway'],
              'provided': {
                'appointmentType': appointmentType != null,
                'paymentGateway': paymentGateway != null,
              },
            },
          },
        },
      );
    }

    final db = context.read<DatabaseClient>();

    // Determine if this is request-then-pay or direct checkout
    final bookingId = data['bookingId'] as String?;
    final consultantProfileId = data['consultantProfileId'] as String?;
    final planId = data['planId'] as String?;

    Map<String, dynamic>? booking;
    Map<String, dynamic>? plan;
    String finalBookingId;
    String? consultantName;

    if (bookingId != null) {
      // Request-then-pay flow: Use existing booking
      booking = await db.checkout.getBookingById(bookingId, appointmentType);
      if (booking == null) {
        return Response.json(
          statusCode: HttpStatus.notFound,
          body: {
            'error': {
              'code': 'BOOKING_NOT_FOUND',
              'message': 'Booking not found',
              'details': {'bookingId': bookingId},
            },
          },
        );
      }

      // Get plan from booking
      if (appointmentType.toUpperCase() == 'CONSULTATION') {
        plan = booking['consultationPlan'] as Map<String, dynamic>?;
      } else {
        plan = booking['subscriptionPlan'] as Map<String, dynamic>?;
      }

      finalBookingId = bookingId;

      // Extract consultant name
      final consultantProfile =
          plan?['consultantProfile'] as Map<String, dynamic>?;
      final user = consultantProfile?['user'] as Map<String, dynamic>?;
      consultantName = user?['name'] as String?;
    } else if (consultantProfileId != null && planId != null) {
      // Direct checkout flow: Create booking first
      final consulteeProfile = await db.consulteeProfiles.findByUserId(userId);
      if (consulteeProfile == null) {
        return Response.json(
          statusCode: HttpStatus.badRequest,
          body: {
            'error': {
              'code': 'MISSING_CONSULTEE_PROFILE',
              'message': 'User does not have a consultee profile',
              'hint': 'Complete onboarding to create a consultee profile',
            },
          },
        );
      }

      final requestedById = consulteeProfile['id'] as String;

      // Get plan details
      if (appointmentType.toUpperCase() == 'CONSULTATION') {
        plan = await db.checkout.getConsultationPlan(planId);

        if (plan == null) {
          return Response.json(
            statusCode: HttpStatus.notFound,
            body: {
              'error': {
                'code': 'PLAN_NOT_FOUND',
                'message': 'Consultation plan not found',
                'details': {'planId': planId, 'planType': 'CONSULTATION'},
              },
            },
          );
        }

        // Create consultation booking
        final slotStartTimeStr = data['slotStartTimeInUTC'] as String?;

        if (slotStartTimeStr == null) {
          return Response.json(
            statusCode: HttpStatus.badRequest,
            body: {
              'error': {
                'code': 'MISSING_SLOT_TIME',
                'message': 'slotStartTimeInUTC is required for consultations',
                'hint': 'Provide slotStartTimeInUTC in ISO 8601 format',
              },
            },
          );
        }

        final slotStartTime = DateTime.parse(slotStartTimeStr);
        final notes = data['notes'] as String?;

        try {
          booking = await db.appointments.createConsultationBooking(
            consultantProfileId: consultantProfileId,
            planId: planId,
            requestedById: requestedById,
            userId: userId,
            slotStartTimes: [slotStartTime],
            message: notes,
          );
        } on SlotConflictException catch (e) {
          return Response.json(
            statusCode: HttpStatus.conflict,
            body: {
              'error': {
                'code': 'SLOT_CONFLICT',
                'message': e.message,
                'conflictingSlots': e.conflictingSlotTimes,
              },
            },
          );
        } on DuplicateBookingException catch (e) {
          return Response.json(
            statusCode: HttpStatus.conflict,
            body: {
              'error': {
                'code': 'DUPLICATE_BOOKING',
                'message': e.message,
              },
            },
          );
        }

        finalBookingId = booking['id'] as String;
      } else {
        // SUBSCRIPTION
        plan = await db.checkout.getSubscriptionPlan(planId);

        if (plan == null) {
          return Response.json(
            statusCode: HttpStatus.notFound,
            body: {
              'error': {
                'code': 'PLAN_NOT_FOUND',
                'message': 'Subscription plan not found',
                'details': {'planId': planId, 'planType': 'SUBSCRIPTION'},
              },
            },
          );
        }

        // Create subscription booking
        final periodStartStr = data['schedulingPeriodStartsAt'] as String?;

        if (periodStartStr == null) {
          return Response.json(
            statusCode: HttpStatus.badRequest,
            body: {
              'error': {
                'code': 'MISSING_SCHEDULING_PERIOD',
                'message':
                    'schedulingPeriodStartsAt is required for subscriptions',
                'hint': 'Provide schedulingPeriodStartsAt in ISO 8601 format',
              },
            },
          );
        }

        final periodStart = DateTime.parse(periodStartStr);
        final notes = data['notes'] as String?;

        try {
          booking = await db.appointments.createSubscriptionBooking(
            consultantProfileId: consultantProfileId,
            planId: planId,
            requestedById: requestedById,
            schedulingPeriodStart: periodStart,
            message: notes,
          );
        } on DuplicateBookingException catch (e) {
          return Response.json(
            statusCode: HttpStatus.conflict,
            body: {
              'error': {
                'code': 'DUPLICATE_BOOKING',
                'message': e.message,
              },
            },
          );
        }

        finalBookingId = booking['id'] as String;
      }

      // Extract consultant name from plan
      final consultantProfile =
          plan['consultantProfile'] as Map<String, dynamic>?;
      final user = consultantProfile?['user'] as Map<String, dynamic>?;
      consultantName = user?['name'] as String?;
    } else {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {
            'code': 'INVALID_CHECKOUT_REQUEST',
            'message':
                'Either bookingId or (consultantProfileId + planId) required',
            'hint': 'For existing bookings, provide bookingId. '
                'For direct checkout, provide consultantProfileId and planId.',
          },
        },
      );
    }

    // Calculate amount
    var amount = (plan?['price'] as num?)?.toDouble() ?? 0;
    final currency = plan?['priceCurrency'] as String? ?? 'INR';

    // Handle discount code
    String? discountCodeId;
    double? discountAmount;
    final discountCode = data['discountCode'] as String?;

    if (discountCode != null && discountCode.isNotEmpty) {
      final discount = await db.checkout.validateDiscountCode(
        code: discountCode,
        amount: amount,
      );

      if (discount != null && discount['valid'] == true) {
        discountCodeId = discount['id'] as String?;
        discountAmount = (discount['discountAmount'] as num?)?.toDouble();
        if (discountAmount != null) {
          amount = amount - discountAmount;
          if (amount < 0) amount = 0;
        }
      }
    }

    // Get appointment ID for the booking (if consultation)
    String? appointmentId;
    if (appointmentType.toUpperCase() == 'CONSULTATION') {
      // Appointment was created with the booking - fetch it
      final appointmentQuery = JsonQueryBuilder()
          .model('Appointment')
          .action(QueryAction.findFirst)
          .where({'consultationId': finalBookingId}).build();
      final appointmentResult =
          await db.executor.executeQueryAsSingleMap(appointmentQuery);
      if (appointmentResult != null) {
        appointmentId = appointmentResult['id'] as String?;
      }
    }

    // Convert to smallest unit (paise/cents) once
    final amountInSmallestUnit = (amount * 100).round();

    // Create payment record
    final paymentInfo = await db.checkout.createPayment(
      userId: userId,
      amount: amountInSmallestUnit,
      currency: currency,
      paymentGateway: paymentGateway.toUpperCase(),
      appointmentId: appointmentId,
      discountCodeId: discountCodeId,
      description: 'Booking with ${consultantName ?? 'consultant'}',
    );

    // Generate gateway-specific fields
    String? razorpayOrderId;
    String? stripeClientSecret;
    String? stripePaymentIntentId;

    if (paymentGateway.toUpperCase() == 'RAZORPAY') {
      // Create a real Razorpay order via API
      final env = context.read<DotEnv>();
      final razorpayKeyId = env['RAZORPAY_KEY_ID'];
      final razorpayKeySecret = env['RAZORPAY_KEY_SECRET'];

      if (razorpayKeyId == null || razorpayKeySecret == null) {
        await SentryLogger.error(
          'Razorpay credentials not configured',
          context: 'CheckoutRoute',
        );
        return Response.json(
          statusCode: HttpStatus.internalServerError,
          body: {
            'error': {
              'code': 'RAZORPAY_NOT_CONFIGURED',
              'message': 'Payment gateway not configured',
              'hint': 'Add RAZORPAY_KEY_ID and RAZORPAY_KEY_SECRET to .env',
            },
          },
        );
      }

      try {
        final razorpayService = RazorpayService(
          keyId: razorpayKeyId,
          keySecret: razorpayKeySecret,
        );

        // Razorpay receipt max length is 40 chars. UUID is 36 chars, so use short prefix.
        final paymentIdStr = paymentInfo['paymentId'] as String;
        final razorpayOrder = await razorpayService.createOrder(
          amountInPaise: amountInSmallestUnit,
          currency: currency,
          receipt: 'r_$paymentIdStr',
          notes: {
            'booking_id': finalBookingId,
            'user_id': userId,
          },
        );

        razorpayOrderId = razorpayOrder.id;

        SentryLogger.info(
          'Created Razorpay order: $razorpayOrderId for amount: $amountInSmallestUnit $currency',
          context: 'CheckoutRoute',
        );
      } on RazorpayException catch (e, stackTrace) {
        await SentryLogger.error(
          'Failed to create Razorpay order',
          context: 'CheckoutRoute',
          error: e,
          stackTrace: stackTrace,
        );

        return Response.json(
          statusCode: HttpStatus.badGateway,
          body: {
            'error': {
              'code': 'RAZORPAY_ORDER_FAILED',
              'message': 'Failed to create payment order',
              'details': e.message,
            },
          },
        );
      }
    } else if (paymentGateway.toUpperCase() == 'STRIPE') {
      // Create a real Stripe PaymentIntent
      final env = context.read<DotEnv>();
      final stripeSecretKey = env['STRIPE_SECRET_KEY'];

      if (stripeSecretKey == null || stripeSecretKey.isEmpty) {
        await SentryLogger.error(
          'Stripe credentials not configured',
          context: 'CheckoutRoute',
        );
        return Response.json(
          statusCode: HttpStatus.internalServerError,
          body: {
            'error': {
              'code': 'STRIPE_NOT_CONFIGURED',
              'message': 'Payment gateway not configured',
              'hint': 'Add STRIPE_SECRET_KEY to .env',
            },
          },
        );
      }

      try {
        final stripeService = StripeService(secretKey: stripeSecretKey);

        final paymentIdStr = paymentInfo['paymentId'] as String;

        final paymentIntent = await stripeService.createPaymentIntent(
          amountInSmallestUnit: amountInSmallestUnit,
          currency: currency,
          metadata: {
            'payment_id': paymentIdStr,
            'booking_id': finalBookingId,
            'user_id': userId,
          },
        );

        stripeClientSecret = paymentIntent.clientSecret;
        stripePaymentIntentId = paymentIntent.id;

        // Update payment record with Stripe payment intent ID
        // We need to update the paymentIntent field to store the Stripe pi_ ID
        final updateQuery = JsonQueryBuilder()
            .model('Payment')
            .action(QueryAction.update)
            .where({'id': paymentIdStr}).data({
          'paymentIntent': paymentIntent.id,
          'updatedAt': DateTime.now().toUtc().toIso8601String(),
        }).build();
        await db.executor.executeMutation(updateQuery);

        SentryLogger.info(
          'Created Stripe PaymentIntent: ${paymentIntent.id} '
          'for amount: $amountInSmallestUnit $currency',

          context: 'CheckoutRoute',
        );
      } on StripeException catch (e, stackTrace) {
        await SentryLogger.error(
          'Failed to create Stripe PaymentIntent',
          context: 'CheckoutRoute',
          error: e,
          stackTrace: stackTrace,
        );

        return Response.json(
          statusCode: HttpStatus.badGateway,
          body: {
            'error': {
              'code': 'STRIPE_PAYMENT_FAILED',
              'message': 'Failed to create payment intent',
              'details': e.message,
            },
          },
        );
      }
    }

    return Response.json(
      statusCode: HttpStatus.created,
      body: serializeForJson({
        'paymentId': paymentInfo['paymentId'],
        'gateway': paymentGateway.toUpperCase(),
        'amount': amount,
        'currency': currency,
        if (razorpayOrderId != null) 'razorpayOrderId': razorpayOrderId,
        if (stripeClientSecret != null)
          'stripeClientSecret': stripeClientSecret,
        if (stripePaymentIntentId != null)
          'stripePaymentIntentId': stripePaymentIntentId,
        if (discountAmount != null) 'discountAmount': discountAmount,
        if (discountCode != null) 'discountCode': discountCode,
        'bookingId': finalBookingId,
        'bookingType': appointmentType.toUpperCase(),
      }),
    );
  } on FormatException catch (_) {
    return Response.json(
      statusCode: HttpStatus.badRequest,
      body: {
        'error': {'message': 'Invalid request body format'},
      },
    );
  } catch (e, stackTrace) {
    await SentryLogger.error(
      'Error in POST /api/checkout',
      context: 'CheckoutRoute',
      error: e,
      stackTrace: stackTrace,
    );

    final errorMessage = e.toString();

    if (errorMessage.contains('not found')) {
      return Response.json(
        statusCode: HttpStatus.notFound,
        body: {
          'error': {
            'code': 'NOT_FOUND',
            'message': errorMessage,
          },
        },
      );
    }

    final isProduction =
        Platform.environment['DART_ENV'] == 'production';
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {
          'code': 'INTERNAL_ERROR',
          'message': 'Failed to create checkout session',
          if (!isProduction) 'details': errorMessage,
          if (!isProduction) 'type': e.runtimeType.toString(),
        },
      },
    );
  }
}
