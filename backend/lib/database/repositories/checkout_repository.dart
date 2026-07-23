import 'package:backend/database/repositories/base_repository.dart';
import 'package:backend/generated/index.dart';
import 'package:uuid/uuid.dart';

/// Repository for checkout and payment operations
class CheckoutRepository extends BaseRepository {
  CheckoutRepository(super._executor, this._prisma);

  final PrismaClient _prisma;
  final _uuid = const Uuid();

  /// Create a payment record for checkout
  ///
  /// Returns the payment ID and details needed for the gateway
  Future<Map<String, dynamic>> createPayment({
    required String userId,
    required int amount,
    int? originalAmount,
    required String currency,
    required String paymentGateway,
    String? appointmentId,
    String? consultationId,
    String? subscriptionId,
    String? discountCodeId,
    String? description,
  }) async {
    final paymentIntent = 'pi_${_uuid.v4().replaceAll('-', '')}';

    final payment = await _prisma.payment.create(
      data: CreatePaymentInput(
        amount: BigInt.from(amount),
        originalAmount: BigInt.from(originalAmount ?? amount),
        currency: Currency.values.firstWhere((e) => e.toJson() == currency),
        paymentMethod: 'CARD',
        paymentIntent: paymentIntent,
        paymentGateway:
            PaymentGateway.values.firstWhere((e) => e.toJson() == paymentGateway),
        paymentStatus: PaymentStatus.pending,
        isMockPayment: false,
        userId: userId,
        appointmentId: appointmentId,
        discountCodeId: discountCodeId,
        description: description,
        expiresAt: DateTime.now().add(const Duration(hours: 1)).toUtc(),
      ),
    );

    return {
      'paymentId': payment.id,
      'paymentIntent': paymentIntent,
      'amount': amount,
      'currency': currency,
      'gateway': paymentGateway,
    };
  }

  /// Get payment by ID
  Future<Map<String, dynamic>?> getPaymentById(String paymentId) async {
    final payment = await _prisma.payment.findUnique(
      where: PaymentWhereUniqueInput(id: paymentId),
    );
    return payment?.toJson();
  }

  /// Update payment status
  Future<void> updatePaymentStatus({
    required String paymentId,
    required String status,
    String? receiptUrl,
  }) async {
    await _prisma.payment.update(
      where: PaymentWhereUniqueInput(id: paymentId),
      data: UpdatePaymentInput(
        paymentStatus:
            PaymentStatus.values.firstWhere((e) => e.toJson() == status),
        receiptUrl: receiptUrl,
      ),
    );
  }

  /// Update payment intent (e.g., with Razorpay order ID)
  Future<void> updatePaymentIntent({
    required String paymentId,
    required String paymentIntent,
  }) async {
    await _prisma.payment.update(
      where: PaymentWhereUniqueInput(id: paymentId),
      data: UpdatePaymentInput(paymentIntent: paymentIntent),
    );
  }

  /// Get plan price and details
  Future<Map<String, dynamic>?> getConsultationPlan(String planId) async {
    final plan = await _prisma.consultationPlan.findUnique(
      where: ConsultationPlanWhereUniqueInput(id: planId),
      include: ConsultationPlanInclude(
        consultantProfile: ConsultantProfileInclude(user: UserInclude()),
      ),
    );
    return plan?.toJson();
  }

  /// Get subscription plan price and details
  Future<Map<String, dynamic>?> getSubscriptionPlan(String planId) async {
    final plan = await _prisma.subscriptionPlan.findUnique(
      where: SubscriptionPlanWhereUniqueInput(id: planId),
      include: SubscriptionPlanInclude(
        consultantProfile: ConsultantProfileInclude(user: UserInclude()),
      ),
    );
    return plan?.toJson();
  }

  /// Get booking details by ID (consultation or subscription)
  Future<Map<String, dynamic>?> getBookingById(
    String bookingId,
    String bookingType,
  ) async {
    if (bookingType.toUpperCase() == 'CONSULTATION') {
      final booking = await _prisma.consultation.findUnique(
        where: ConsultationWhereUniqueInput(id: bookingId),
        include: ConsultationInclude(
          consultationPlan: ConsultationPlanInclude(
            consultantProfile: ConsultantProfileInclude(user: UserInclude()),
          ),
        ),
      );
      return booking?.toJson();
    } else {
      final booking = await _prisma.subscription.findUnique(
        where: SubscriptionWhereUniqueInput(id: bookingId),
        include: SubscriptionInclude(
          subscriptionPlan: SubscriptionPlanInclude(
            consultantProfile: ConsultantProfileInclude(user: UserInclude()),
          ),
        ),
      );
      return booking?.toJson();
    }
  }

  /// Validate discount code and return discount info
  Future<Map<String, dynamic>?> validateDiscountCode({
    required String code,
    double? amount,
  }) async {
    final discountModel = await _prisma.discountCode.findFirst(
      where: DiscountCodeWhereInput(
        code: StringFilter(equals: code.toUpperCase()),
        isActive: BooleanFilter(equals: true),
      ),
    );

    if (discountModel == null) {
      return {
        'valid': false,
        'reason': 'not_found',
      };
    }

    final discount = discountModel.toJson();

    final expiresAt = _parseDateTime(discount['expiresAt']);
    final now = DateTime.now().toUtc();

    if (expiresAt != null && !expiresAt.isAfter(now)) {
      return {
        'valid': false,
        'reason': 'expired',
        'expiresAt': expiresAt,
      };
    }

    // Check usage limit
    final maxUses = discount['maxUses'] as int?;
    final currentUses = discount['currentUses'] as int? ?? 0;

    if (maxUses != null && currentUses >= maxUses) {
      return {
        'valid': false,
        'reason': 'exhausted',
      };
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
      'maxDiscount': discount['maxDiscount'],
      'expiresAt': expiresAt,
      'valid': true,
    };
  }

  DateTime? _parseDateTime(dynamic value) {
    if (value is DateTime) {
      return value.toUtc();
    }

    if (value is String && value.isNotEmpty) {
      return DateTime.tryParse(value)?.toUtc();
    }

    return null;
  }

  /// Update booking status after successful payment
  Future<void> updateBookingStatus({
    required String bookingId,
    required String bookingType,
    required String status,
  }) async {
    // The Dart field is `status` (@map'd to the requestStatus column).
    final typedStatus =
        AppointmentStatus.values.firstWhere((e) => e.toJson() == status);
    if (bookingType.toUpperCase() == 'CONSULTATION') {
      await _prisma.consultation.update(
        where: ConsultationWhereUniqueInput(id: bookingId),
        data: UpdateConsultationInput(status: typedStatus),
      );
    } else {
      await _prisma.subscription.update(
        where: SubscriptionWhereUniqueInput(id: bookingId),
        data: UpdateSubscriptionInput(status: typedStatus),
      );
    }
  }

  /// Confirm slot bookings (mark as non-tentative) after payment
  Future<void> confirmSlots(String consultationId) async {
    // Get appointment for this consultation
    final appointment = await _prisma.appointment.findFirst(
      where: AppointmentWhereInput(
        consultationId: StringFilter(equals: consultationId),
      ),
    );

    if (appointment == null) return;

    // Update all slots to confirmed (non-tentative)
    await _prisma.slotOfAppointment.updateMany(
      where: SlotOfAppointmentWhereInput(
        appointmentId: StringFilter(equals: appointment.id),
      ),
      data: UpdateSlotOfAppointmentInput(isTentative: false),
    );
  }
}
