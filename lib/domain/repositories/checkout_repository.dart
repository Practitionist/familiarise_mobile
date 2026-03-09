import '../../core/errors/failures.dart';
import '../entities/checkout/checkout_entities.dart';

/// Repository interface for checkout and payment operations
abstract class CheckoutRepository {
  /// Create a checkout session for payment processing
  ///
  /// [bookingId] - The booking to pay for
  /// [bookingType] - Type of booking (CONSULTATION, SUBSCRIPTION, etc.)
  /// [gateway] - Payment gateway to use
  /// [discountCode] - Optional discount code
  Future<Result<CheckoutSession>> createCheckout({
    required String bookingId,
    required String bookingType,
    required PaymentGatewayType gateway,
    String? discountCode,
  });

  /// Verify payment completion after gateway callback
  ///
  /// [paymentId] - Payment ID from checkout session
  /// [razorpayPaymentId] - Razorpay payment ID (if Razorpay)
  /// [razorpaySignature] - Razorpay signature (if Razorpay)
  Future<Result<PaymentVerification>> verifyPayment({
    required String paymentId,
    String? razorpayPaymentId,
    String? razorpayOrderId,
    String? razorpaySignature,
  });

  /// Validate a discount code
  ///
  /// [code] - The discount code to validate
  /// [bookingId] - The booking ID (for context)
  /// [amount] - Original amount (for percentage calculations)
  Future<Result<DiscountInfo>> validateDiscountCode({
    required String code,
    required String bookingId,
    double? amount,
  });

  /// Create a direct checkout session (without pre-created booking)
  ///
  /// Used for direct checkout flow where payment is initiated immediately
  Future<Result<CheckoutSession>> createDirectCheckout({
    required String consultantProfileId,
    required String planId,
    required String planType,
    required PaymentGatewayType gateway,
    DateTime? slotStartTime,
    DateTime? slotEndTime,
    String? slotOfAvailabilityId,
    DateTime? schedulingPeriodStart,
    DateTime? schedulingPeriodEnd,
    String? discountCode,
    String? notes,
  });
}
