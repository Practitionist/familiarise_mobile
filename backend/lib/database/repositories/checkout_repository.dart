import 'package:backend/database/repositories/base_repository.dart';
import 'package:prisma_flutter_connector/runtime_server.dart';
import 'package:uuid/uuid.dart';

/// Repository for checkout and payment operations
class CheckoutRepository extends BaseRepository {
  CheckoutRepository(super._executor);

  final _uuid = const Uuid();

  /// Create a payment record for checkout
  ///
  /// Returns the payment ID and details needed for the gateway
  Future<Map<String, dynamic>> createPayment({
    required String userId,
    required int amount,
    required String currency,
    required String paymentGateway,
    String? appointmentId,
    String? consultationId,
    String? subscriptionId,
    String? discountCodeId,
    String? description,
  }) async {
    final paymentId = _uuid.v4();
    final paymentIntent = 'pi_${_uuid.v4().replaceAll('-', '')}';
    final now = nowIso8601;

    // Create payment record
    final createQuery =
        JsonQueryBuilder().model('Payment').action(QueryAction.create).data({
      'id': paymentId,
      'amount': amount,
      'originalAmount': amount,
      'currency': currency,
      'paymentMethod': 'CARD',
      'paymentIntent': paymentIntent,
      'paymentGateway': paymentGateway,
      'paymentStatus': 'PENDING',
      'isMockPayment': false,
      'userId': userId,
      if (appointmentId != null) 'appointmentId': appointmentId,
      if (discountCodeId != null) 'discountCodeId': discountCodeId,
      if (description != null) 'description': description,
      'expiresAt': DateTime.now()
          .add(const Duration(hours: 1))
          .toUtc()
          .toIso8601String(),
      'createdAt': now,
      'updatedAt': now,
    }).build();

    await executeMutation(createQuery);

    return {
      'paymentId': paymentId,
      'paymentIntent': paymentIntent,
      'amount': amount,
      'currency': currency,
      'gateway': paymentGateway,
    };
  }

  /// Get payment by ID
  Future<Map<String, dynamic>?> getPaymentById(String paymentId) async {
    final query = JsonQueryBuilder()
        .model('Payment')
        .action(QueryAction.findUnique)
        .where({'id': paymentId}).build();

    return executeQueryAsSingleMap(query);
  }

  /// Update payment status
  Future<void> updatePaymentStatus({
    required String paymentId,
    required String status,
    String? receiptUrl,
  }) async {
    final updateQuery = JsonQueryBuilder()
        .model('Payment')
        .action(QueryAction.update)
        .where({'id': paymentId}).data({
      'paymentStatus': status,
      if (receiptUrl != null) 'receiptUrl': receiptUrl,
      'updatedAt': nowIso8601,
    }).build();

    await executeMutation(updateQuery);
  }

  /// Update payment intent (e.g., with Razorpay order ID)
  Future<void> updatePaymentIntent({
    required String paymentId,
    required String paymentIntent,
  }) async {
    final updateQuery = JsonQueryBuilder()
        .model('Payment')
        .action(QueryAction.update)
        .where({'id': paymentId}).data({
      'paymentIntent': paymentIntent,
      'updatedAt': nowIso8601,
    }).build();
    await executeMutation(updateQuery);
  }

  /// Get plan price and details
  Future<Map<String, dynamic>?> getConsultationPlan(String planId) async {
    final query = JsonQueryBuilder()
        .model('ConsultationPlan')
        .action(QueryAction.findUnique)
        .where({'id': planId}).include({
      'consultantProfile': {
        'include': {'user': true}
      }
    }).build();

    return executeQueryAsSingleMap(query);
  }

  /// Get subscription plan price and details
  Future<Map<String, dynamic>?> getSubscriptionPlan(String planId) async {
    final query = JsonQueryBuilder()
        .model('SubscriptionPlan')
        .action(QueryAction.findUnique)
        .where({'id': planId}).include({
      'consultantProfile': {
        'include': {'user': true}
      }
    }).build();

    return executeQueryAsSingleMap(query);
  }

  /// Get booking details by ID (consultation or subscription)
  Future<Map<String, dynamic>?> getBookingById(
    String bookingId,
    String bookingType,
  ) async {
    if (bookingType.toUpperCase() == 'CONSULTATION') {
      final query = JsonQueryBuilder()
          .model('Consultation')
          .action(QueryAction.findUnique)
          .where({'id': bookingId}).include({
        'consultationPlan': {
          'include': {
            'consultantProfile': {
              'include': {'user': true}
            }
          }
        }
      }).build();

      return executeQueryAsSingleMap(query);
    } else {
      final query = JsonQueryBuilder()
          .model('Subscription')
          .action(QueryAction.findUnique)
          .where({'id': bookingId}).include({
        'subscriptionPlan': {
          'include': {
            'consultantProfile': {
              'include': {'user': true}
            }
          }
        }
      }).build();

      return executeQueryAsSingleMap(query);
    }
  }

  /// Validate discount code and return discount info
  Future<Map<String, dynamic>?> validateDiscountCode({
    required String code,
    double? amount,
  }) async {
    final query = JsonQueryBuilder()
        .model('DiscountCode')
        .action(QueryAction.findFirst)
        .where({
      'code': code.toUpperCase(),
      'isActive': true,
      'OR': [
        {'expiresAt': null},
        {
          'expiresAt': {'gt': nowIso8601}
        },
      ],
    }).build();

    final discount = await executeQueryAsSingleMap(query);

    if (discount == null) {
      return null;
    }

    // Check usage limit
    final maxUses = discount['maxUses'] as int?;
    final currentUses = discount['currentUses'] as int? ?? 0;

    if (maxUses != null && currentUses >= maxUses) {
      return null; // Discount exhausted
    }

    // Calculate discount amount
    final discountType = discount['discountType'] as String?;
    final discountValue = (discount['discountValue'] as num?)?.toDouble() ?? 0;
    double discountAmount = 0;

    if (amount != null) {
      if (discountType == 'PERCENTAGE') {
        discountAmount = (amount * discountValue / 100);
        // Apply max discount if set
        final maxDiscount = (discount['maxDiscount'] as num?)?.toDouble();
        if (maxDiscount != null && discountAmount > maxDiscount) {
          discountAmount = maxDiscount;
        }
      } else {
        // FIXED amount
        discountAmount = discountValue;
      }
    }

    return {
      'id': discount['id'],
      'code': discount['code'],
      'discountType': discountType,
      'discountValue': discountValue,
      'discountAmount': discountAmount,
      'valid': true,
    };
  }

  /// Update booking status after successful payment
  Future<void> updateBookingStatus({
    required String bookingId,
    required String bookingType,
    required String status,
  }) async {
    final model = bookingType.toUpperCase() == 'CONSULTATION'
        ? 'Consultation'
        : 'Subscription';

    final updateQuery = JsonQueryBuilder()
        .model(model)
        .action(QueryAction.update)
        .where({'id': bookingId}).data({
      'requestStatus': status,
      'updatedAt': nowIso8601,
    }).build();

    await executeMutation(updateQuery);
  }

  /// Confirm slot bookings (mark as non-tentative) after payment
  Future<void> confirmSlots(String consultationId) async {
    // Get appointment for this consultation
    final appointmentQuery = JsonQueryBuilder()
        .model('Appointment')
        .action(QueryAction.findFirst)
        .where({'consultationId': consultationId}).build();

    final appointment = await executeQueryAsSingleMap(appointmentQuery);

    if (appointment == null) return;

    final appointmentId = appointment['id'] as String;

    // Update all slots to confirmed (non-tentative)
    final updateQuery = JsonQueryBuilder()
        .model('SlotOfAppointment')
        .action(QueryAction.updateMany)
        .where({'appointmentId': appointmentId}).data({
      'isTentative': false,
      'updatedAt': nowIso8601,
    }).build();

    await executeMutation(updateQuery);
  }
}
