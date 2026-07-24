import 'package:backend/database/repositories/checkout_repository.dart';
import 'package:backend/generated/index.dart';
import 'package:mocktail/mocktail.dart';
import 'package:prisma_flutter_connector/runtime_server.dart';
import 'package:test/test.dart';

import '../helpers/prisma_mocks.dart';

class MockQueryExecutor extends Mock implements QueryExecutor {}

class FakeJsonQuery extends Fake implements JsonQuery {}

void main() {
  late MockQueryExecutor mockExecutor;
  late MockPrismaClient mockPrisma;
  late MockPaymentDelegate mockPayments;
  late MockConsultationPlanDelegate mockConsultationPlans;
  late MockSubscriptionPlanDelegate mockSubscriptionPlans;
  late MockConsultationDelegate mockConsultations;
  late MockSubscriptionDelegate mockSubscriptions;
  late MockDiscountCodeDelegate mockDiscountCodes;
  late MockAppointmentDelegate mockAppointments;
  late MockSlotOfAppointmentDelegate mockSlots;
  late CheckoutRepository repository;

  setUpAll(() {
    registerFallbackValue(FakeJsonQuery());
    registerPrismaFallbacks();
    registerExploreFallbacks();
    registerBookingFallbacks();
  });

  setUp(() {
    mockExecutor = MockQueryExecutor();
    mockPrisma = MockPrismaClient();
    mockPayments = MockPaymentDelegate();
    mockConsultationPlans = MockConsultationPlanDelegate();
    mockSubscriptionPlans = MockSubscriptionPlanDelegate();
    mockConsultations = MockConsultationDelegate();
    mockSubscriptions = MockSubscriptionDelegate();
    mockDiscountCodes = MockDiscountCodeDelegate();
    mockAppointments = MockAppointmentDelegate();
    mockSlots = MockSlotOfAppointmentDelegate();
    when(() => mockPrisma.payment).thenReturn(mockPayments);
    when(() => mockPrisma.consultationPlan).thenReturn(mockConsultationPlans);
    when(() => mockPrisma.subscriptionPlan).thenReturn(mockSubscriptionPlans);
    when(() => mockPrisma.consultation).thenReturn(mockConsultations);
    when(() => mockPrisma.subscription).thenReturn(mockSubscriptions);
    when(() => mockPrisma.discountCode).thenReturn(mockDiscountCodes);
    when(() => mockPrisma.appointment).thenReturn(mockAppointments);
    when(() => mockPrisma.slotOfAppointment).thenReturn(mockSlots);
    repository = CheckoutRepository(mockExecutor, mockPrisma);
  });

  group('createPayment', () {
    test('creates payment and returns payment details', () async {
      when(() => mockPayments.create(data: any(named: 'data')))
          .thenAnswer((_) async => buildPayment());

      final result = await repository.createPayment(
        userId: 'user-1',
        amount: 5000,
        currency: 'INR',
        paymentGateway: 'STRIPE',
      );

      expect(result['paymentId'], isA<String>());
      expect(result['paymentIntent'], startsWith('pi_'));
      expect(result['amount'], equals(5000));
      expect(result['currency'], equals('INR'));
      expect(result['gateway'], equals('STRIPE'));
      verify(() => mockPayments.create(data: any(named: 'data'))).called(1);
    });

    test('creates payment with optional appointment ID', () async {
      when(() => mockPayments.create(data: any(named: 'data')))
          .thenAnswer((_) async => buildPayment());

      final result = await repository.createPayment(
        userId: 'user-1',
        amount: 3000,
        currency: 'USD',
        paymentGateway: 'RAZORPAY',
        appointmentId: 'apt-1',
      );

      expect(result['paymentId'], isA<String>());
      expect(result['amount'], equals(3000));
    });

    test('creates payment with discount code', () async {
      when(() => mockPayments.create(data: any(named: 'data')))
          .thenAnswer((_) async => buildPayment());

      final result = await repository.createPayment(
        userId: 'user-1',
        amount: 2500,
        currency: 'INR',
        paymentGateway: 'STRIPE',
        discountCodeId: 'disc-1',
        description: 'Consultation payment',
      );

      expect(result['paymentId'], isA<String>());
      expect(result['amount'], equals(2500));
    });
  });

  group('getPaymentById', () {
    test('returns payment when found', () async {
      when(() => mockPayments.findUnique(where: any(named: 'where')))
          .thenAnswer((_) async => buildPayment());

      final result = await repository.getPaymentById('pay-1');

      expect(result?['id'], equals('pay-1'));
      expect(result?['currency'], equals('INR'));
      expect(result?['paymentStatus'], equals('PENDING'));
      expect(result?['userId'], equals('user-1'));
      verify(() => mockPayments.findUnique(where: any(named: 'where')))
          .called(1);
    });

    test('returns null when payment not found', () async {
      when(() => mockPayments.findUnique(where: any(named: 'where')))
          .thenAnswer((_) async => null);

      final result = await repository.getPaymentById('nonexistent');

      expect(result, isNull);
    });
  });

  group('updatePaymentStatus', () {
    test('updates payment status successfully', () async {
      when(
        () => mockPayments.update(
          where: any(named: 'where'),
          data: any(named: 'data'),
        ),
      ).thenAnswer((_) async => buildPayment());

      await expectLater(
        repository.updatePaymentStatus(
          paymentId: 'pay-1',
          status: 'SUCCEEDED',
        ),
        completes,
      );

      verify(
        () => mockPayments.update(
          where: any(named: 'where'),
          data: any(named: 'data'),
        ),
      ).called(1);
    });

    test('updates payment status with receipt URL', () async {
      when(
        () => mockPayments.update(
          where: any(named: 'where'),
          data: any(named: 'data'),
        ),
      ).thenAnswer((_) async => buildPayment());

      await expectLater(
        repository.updatePaymentStatus(
          paymentId: 'pay-1',
          status: 'SUCCEEDED',
          receiptUrl: 'https://receipt.example.com/123',
        ),
        completes,
      );

      verify(
        () => mockPayments.update(
          where: any(named: 'where'),
          data: any(named: 'data'),
        ),
      ).called(1);
    });
  });

  group('getConsultationPlan', () {
    test('returns consultation plan with consultant profile', () async {
      when(
        () => mockConsultationPlans.findUnique(
          where: any(named: 'where'),
          include: any(named: 'include'),
        ),
      ).thenAnswer(
        (_) async => buildConsultationPlan(title: 'Basic Consultation'),
      );

      final result = await repository.getConsultationPlan('plan-1');

      expect(result?['id'], equals('plan-1'));
      expect(result?['title'], equals('Basic Consultation'));
      verify(
        () => mockConsultationPlans.findUnique(
          where: any(named: 'where'),
          include: any(named: 'include'),
        ),
      ).called(1);
    });

    test('returns null when plan not found', () async {
      when(
        () => mockConsultationPlans.findUnique(
          where: any(named: 'where'),
          include: any(named: 'include'),
        ),
      ).thenAnswer((_) async => null);

      final result = await repository.getConsultationPlan('nonexistent');

      expect(result, isNull);
    });
  });

  group('getSubscriptionPlan', () {
    test('returns subscription plan with details', () async {
      when(
        () => mockSubscriptionPlans.findUnique(
          where: any(named: 'where'),
          include: any(named: 'include'),
        ),
      ).thenAnswer(
        (_) async => buildSubscriptionPlan(title: 'Monthly Mentorship'),
      );

      final result = await repository.getSubscriptionPlan('sub-plan-1');

      expect(result?['title'], equals('Monthly Mentorship'));
      verify(
        () => mockSubscriptionPlans.findUnique(
          where: any(named: 'where'),
          include: any(named: 'include'),
        ),
      ).called(1);
    });

    test('returns null when subscription plan not found', () async {
      when(
        () => mockSubscriptionPlans.findUnique(
          where: any(named: 'where'),
          include: any(named: 'include'),
        ),
      ).thenAnswer((_) async => null);

      final result = await repository.getSubscriptionPlan('nonexistent');

      expect(result, isNull);
    });
  });

  group('getBookingById', () {
    test('returns consultation booking', () async {
      when(
        () => mockConsultations.findUnique(
          where: any(named: 'where'),
          include: any(named: 'include'),
        ),
      ).thenAnswer((_) async => buildConsultation(id: 'booking-1'));

      final result = await repository.getBookingById(
        'booking-1',
        'CONSULTATION',
      );

      expect(result?['id'], equals('booking-1'));
      expect(result?['requestStatus'], equals('PENDING'));
      verify(
        () => mockConsultations.findUnique(
          where: any(named: 'where'),
          include: any(named: 'include'),
        ),
      ).called(1);
    });

    test('returns subscription booking', () async {
      when(
        () => mockSubscriptions.findUnique(
          where: any(named: 'where'),
          include: any(named: 'include'),
        ),
      ).thenAnswer(
        (_) async => buildSubscription(
          id: 'sub-1',
          status: AppointmentStatus.approvedPendingPayment,
        ),
      );

      final result = await repository.getBookingById(
        'sub-1',
        'subscription',
      );

      expect(result?['id'], equals('sub-1'));
      expect(
        result?['requestStatus'],
        equals('APPROVED_PENDING_PAYMENT'),
      );
    });

    test('returns null when booking not found', () async {
      when(
        () => mockConsultations.findUnique(
          where: any(named: 'where'),
          include: any(named: 'include'),
        ),
      ).thenAnswer((_) async => null);

      final result = await repository.getBookingById(
        'nonexistent',
        'CONSULTATION',
      );

      expect(result, isNull);
    });
  });

  group('validateDiscountCode', () {
    test('returns valid percentage discount', () async {
      final discount = buildDiscountCode(
        id: 'disc-1',
        code: 'SAVE20',
        discountValue: 20,
        maxUses: 100,
        currentUses: 5,
      );

      when(() => mockDiscountCodes.findFirst(where: any(named: 'where')))
          .thenAnswer((_) async => discount);

      final result = await repository.validateDiscountCode(
        code: 'save20',
        amount: 1000,
      );

      expect(result, isNotNull);
      expect(result?['valid'], isTrue);
      expect(result?['code'], equals('SAVE20'));
      expect(result?['discountAmount'], equals(200.0));
    });

    test('returns valid fixed discount', () async {
      final discount = buildDiscountCode(
        id: 'disc-2',
        code: 'FLAT500',
        discountType: DiscountType.fixedAmount,
        discountValue: 500,
      );

      when(() => mockDiscountCodes.findFirst(where: any(named: 'where')))
          .thenAnswer((_) async => discount);

      final result = await repository.validateDiscountCode(
        code: 'flat500',
        amount: 5000,
      );

      expect(result?['valid'], isTrue);
      expect(result?['discountAmount'], equals(500.0));
    });

    test('caps percentage discount at maxDiscount', () async {
      final discount = buildDiscountCode(
        id: 'disc-3',
        code: 'BIG50',
        discountValue: 50,
        maxDiscount: BigInt.from(1000),
      );

      when(() => mockDiscountCodes.findFirst(where: any(named: 'where')))
          .thenAnswer((_) async => discount);

      final result = await repository.validateDiscountCode(
        code: 'big50',
        amount: 5000,
      );

      expect(result?['discountAmount'], equals(1000.0));
    });

    test('returns invalid result when discount code not found', () async {
      when(() => mockDiscountCodes.findFirst(where: any(named: 'where')))
          .thenAnswer((_) async => null);

      final result = await repository.validateDiscountCode(
        code: 'INVALID',
      );

      expect(result?['valid'], isFalse);
      expect(result?['reason'], equals('not_found'));
    });

    test('returns invalid result when discount code exhausted', () async {
      final discount = buildDiscountCode(
        id: 'disc-4',
        code: 'LIMITED',
        maxUses: 5,
        currentUses: 5,
      );

      when(() => mockDiscountCodes.findFirst(where: any(named: 'where')))
          .thenAnswer((_) async => discount);

      final result = await repository.validateDiscountCode(
        code: 'limited',
        amount: 1000,
      );

      expect(result?['valid'], isFalse);
      expect(result?['reason'], equals('exhausted'));
    });

    test('returns invalid result when discount code expired', () async {
      final discount = buildDiscountCode(
        id: 'disc-5',
        code: 'EXPIRED',
        expiresAt: DateTime.utc(2020),
      );

      when(() => mockDiscountCodes.findFirst(where: any(named: 'where')))
          .thenAnswer((_) async => discount);

      final result = await repository.validateDiscountCode(
        code: 'expired',
        amount: 1000,
      );

      expect(result?['valid'], isFalse);
      expect(result?['reason'], equals('expired'));
    });
  });

  group('updateBookingStatus', () {
    test('updates consultation booking status', () async {
      when(
        () => mockConsultations.update(
          where: any(named: 'where'),
          data: any(named: 'data'),
        ),
      ).thenAnswer((_) async => buildConsultation());

      await expectLater(
        repository.updateBookingStatus(
          bookingId: 'booking-1',
          bookingType: 'CONSULTATION',
          status: 'APPROVED',
        ),
        completes,
      );

      verify(
        () => mockConsultations.update(
          where: any(named: 'where'),
          data: any(named: 'data'),
        ),
      ).called(1);
    });

    test('updates subscription booking status', () async {
      when(
        () => mockSubscriptions.update(
          where: any(named: 'where'),
          data: any(named: 'data'),
        ),
      ).thenAnswer((_) async => buildSubscription());

      await expectLater(
        repository.updateBookingStatus(
          bookingId: 'sub-1',
          bookingType: 'SUBSCRIPTION',
          status: 'SCHEDULED',
        ),
        completes,
      );

      verify(
        () => mockSubscriptions.update(
          where: any(named: 'where'),
          data: any(named: 'data'),
        ),
      ).called(1);
    });
  });

  group('confirmSlots', () {
    test('confirms slots for a consultation', () async {
      // First call: find appointment
      when(
        () => mockAppointments.findFirst(
          where: any(named: 'where'),
          include: any(named: 'include'),
        ),
      ).thenAnswer((_) async => buildAppointment());

      // Second call: update slots
      when(
        () => mockSlots.updateMany(
          where: any(named: 'where'),
          data: any(named: 'data'),
        ),
      ).thenAnswer((_) async => 3);

      await expectLater(
        repository.confirmSlots('cons-1'),
        completes,
      );

      verify(
        () => mockAppointments.findFirst(
          where: any(named: 'where'),
          include: any(named: 'include'),
        ),
      ).called(1);
      verify(
        () => mockSlots.updateMany(
          where: any(named: 'where'),
          data: any(named: 'data'),
        ),
      ).called(1);
    });

    test('completes without error when no appointment found', () async {
      when(
        () => mockAppointments.findFirst(
          where: any(named: 'where'),
          include: any(named: 'include'),
        ),
      ).thenAnswer((_) async => null);

      await expectLater(
        repository.confirmSlots('nonexistent'),
        completes,
      );

      // Should not attempt to update slots
      verifyNever(() => mockExecutor.executeMutation(any()));
    });
  });
}
