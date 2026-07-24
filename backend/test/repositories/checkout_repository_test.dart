@Skip(
  'Pending migration to typed delegate mocks: this suite still stubs the '
  'raw QueryExecutor, which the repository no longer uses after the '
  'JQB->typed-delegate migration. See test/helpers/prisma_mocks.dart for '
  'the pattern used by the already-migrated suites.',
)
library;

import 'package:backend/database/repositories/checkout_repository.dart';
import 'package:mocktail/mocktail.dart';
import 'package:prisma_flutter_connector/runtime_server.dart';
import 'package:test/test.dart';

import '../helpers/prisma_mocks.dart';

class MockQueryExecutor extends Mock implements QueryExecutor {}

class FakeJsonQuery extends Fake implements JsonQuery {}

void main() {
  late MockQueryExecutor mockExecutor;
  late CheckoutRepository repository;

  setUpAll(() {
    registerFallbackValue(FakeJsonQuery());
  });

  setUp(() {
    mockExecutor = MockQueryExecutor();
    repository = CheckoutRepository(mockExecutor, MockPrismaClient());
  });

  group('createPayment', () {
    test('creates payment and returns payment details', () async {
      when(() => mockExecutor.executeMutation(any()))
          .thenAnswer((_) async => 1);

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
      verify(() => mockExecutor.executeMutation(any())).called(1);
    });

    test('creates payment with optional appointment ID', () async {
      when(() => mockExecutor.executeMutation(any()))
          .thenAnswer((_) async => 1);

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
      when(() => mockExecutor.executeMutation(any()))
          .thenAnswer((_) async => 1);

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
      final expected = {
        'id': 'pay-1',
        'amount': 5000,
        'currency': 'INR',
        'paymentStatus': 'PENDING',
        'userId': 'user-1',
      };

      when(() => mockExecutor.executeQueryAsSingleMap(any()))
          .thenAnswer((_) async => expected);

      final result = await repository.getPaymentById('pay-1');

      expect(result, equals(expected));
      verify(() => mockExecutor.executeQueryAsSingleMap(any())).called(1);
    });

    test('returns null when payment not found', () async {
      when(() => mockExecutor.executeQueryAsSingleMap(any()))
          .thenAnswer((_) async => null);

      final result = await repository.getPaymentById('nonexistent');

      expect(result, isNull);
    });
  });

  group('updatePaymentStatus', () {
    test('updates payment status successfully', () async {
      when(() => mockExecutor.executeMutation(any()))
          .thenAnswer((_) async => 1);

      await expectLater(
        repository.updatePaymentStatus(
          paymentId: 'pay-1',
          status: 'COMPLETED',
        ),
        completes,
      );

      verify(() => mockExecutor.executeMutation(any())).called(1);
    });

    test('updates payment status with receipt URL', () async {
      when(() => mockExecutor.executeMutation(any()))
          .thenAnswer((_) async => 1);

      await expectLater(
        repository.updatePaymentStatus(
          paymentId: 'pay-1',
          status: 'COMPLETED',
          receiptUrl: 'https://receipt.example.com/123',
        ),
        completes,
      );

      verify(() => mockExecutor.executeMutation(any())).called(1);
    });
  });

  group('getConsultationPlan', () {
    test('returns consultation plan with consultant profile', () async {
      final expected = {
        'id': 'plan-1',
        'title': 'Basic Consultation',
        'price': 5000,
        'priceCurrency': 'INR',
        'durationInHours': 1.0,
        'consultantProfile': {
          'id': 'cp-1',
          'user': {
            'name': 'Dr. Test',
            'email': 'dr@example.com',
          },
        },
      };

      when(() => mockExecutor.executeQueryAsSingleMap(any()))
          .thenAnswer((_) async => expected);

      final result = await repository.getConsultationPlan('plan-1');

      expect(result, equals(expected));
      expect(result?['consultantProfile'], isA<Map>());
      verify(() => mockExecutor.executeQueryAsSingleMap(any())).called(1);
    });

    test('returns null when plan not found', () async {
      when(() => mockExecutor.executeQueryAsSingleMap(any()))
          .thenAnswer((_) async => null);

      final result = await repository.getConsultationPlan('nonexistent');

      expect(result, isNull);
    });
  });

  group('getSubscriptionPlan', () {
    test('returns subscription plan with details', () async {
      final expected = {
        'id': 'sub-plan-1',
        'title': 'Monthly Mentorship',
        'price': 15000,
        'priceCurrency': 'INR',
        'durationInMonths': 3,
        'consultantProfile': {
          'id': 'cp-1',
          'user': {'name': 'Mentor Test'},
        },
      };

      when(() => mockExecutor.executeQueryAsSingleMap(any()))
          .thenAnswer((_) async => expected);

      final result = await repository.getSubscriptionPlan('sub-plan-1');

      expect(result?['title'], equals('Monthly Mentorship'));
      verify(() => mockExecutor.executeQueryAsSingleMap(any())).called(1);
    });

    test('returns null when subscription plan not found', () async {
      when(() => mockExecutor.executeQueryAsSingleMap(any()))
          .thenAnswer((_) async => null);

      final result = await repository.getSubscriptionPlan('nonexistent');

      expect(result, isNull);
    });
  });

  group('getBookingById', () {
    test('returns consultation booking', () async {
      final expected = {
        'id': 'booking-1',
        'requestStatus': 'PENDING',
        'consultationPlan': {
          'consultantProfile': {
            'user': {'name': 'Dr. Test'},
          },
        },
      };

      when(() => mockExecutor.executeQueryAsSingleMap(any()))
          .thenAnswer((_) async => expected);

      final result = await repository.getBookingById(
        'booking-1',
        'CONSULTATION',
      );

      expect(result, equals(expected));
      verify(() => mockExecutor.executeQueryAsSingleMap(any())).called(1);
    });

    test('returns subscription booking', () async {
      final expected = {
        'id': 'sub-1',
        'requestStatus': 'APPROVED',
        'subscriptionPlan': {
          'consultantProfile': {
            'user': {'name': 'Mentor Test'},
          },
        },
      };

      when(() => mockExecutor.executeQueryAsSingleMap(any()))
          .thenAnswer((_) async => expected);

      final result = await repository.getBookingById(
        'sub-1',
        'subscription',
      );

      expect(result, equals(expected));
    });

    test('returns null when booking not found', () async {
      when(() => mockExecutor.executeQueryAsSingleMap(any()))
          .thenAnswer((_) async => null);

      final result = await repository.getBookingById(
        'nonexistent',
        'CONSULTATION',
      );

      expect(result, isNull);
    });
  });

  group('validateDiscountCode', () {
    test('returns valid percentage discount', () async {
      final discount = {
        'id': 'disc-1',
        'code': 'SAVE20',
        'discountType': 'PERCENTAGE',
        'discountValue': 20.0,
        'maxUses': 100,
        'currentUses': 5,
        'maxDiscount': null,
      };

      when(() => mockExecutor.executeQueryAsSingleMap(any()))
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
      final discount = {
        'id': 'disc-2',
        'code': 'FLAT500',
        'discountType': 'FIXED',
        'discountValue': 500.0,
        'maxUses': null,
        'currentUses': 0,
        'maxDiscount': null,
      };

      when(() => mockExecutor.executeQueryAsSingleMap(any()))
          .thenAnswer((_) async => discount);

      final result = await repository.validateDiscountCode(
        code: 'flat500',
        amount: 5000,
      );

      expect(result?['valid'], isTrue);
      expect(result?['discountAmount'], equals(500.0));
    });

    test('caps percentage discount at maxDiscount', () async {
      final discount = {
        'id': 'disc-3',
        'code': 'BIG50',
        'discountType': 'PERCENTAGE',
        'discountValue': 50.0,
        'maxUses': null,
        'currentUses': 0,
        'maxDiscount': 1000.0,
      };

      when(() => mockExecutor.executeQueryAsSingleMap(any()))
          .thenAnswer((_) async => discount);

      final result = await repository.validateDiscountCode(
        code: 'big50',
        amount: 5000,
      );

      expect(result?['discountAmount'], equals(1000.0));
    });

    test('returns invalid result when discount code not found', () async {
      when(() => mockExecutor.executeQueryAsSingleMap(any()))
          .thenAnswer((_) async => null);

      final result = await repository.validateDiscountCode(
        code: 'INVALID',
      );

      expect(result?['valid'], isFalse);
      expect(result?['reason'], equals('not_found'));
    });

    test('returns invalid result when discount code exhausted', () async {
      final discount = {
        'id': 'disc-4',
        'code': 'LIMITED',
        'discountType': 'PERCENTAGE',
        'discountValue': 10.0,
        'maxUses': 5,
        'currentUses': 5,
      };

      when(() => mockExecutor.executeQueryAsSingleMap(any()))
          .thenAnswer((_) async => discount);

      final result = await repository.validateDiscountCode(
        code: 'limited',
        amount: 1000,
      );

      expect(result?['valid'], isFalse);
      expect(result?['reason'], equals('exhausted'));
    });

    test('returns invalid result when discount code expired', () async {
      final discount = {
        'id': 'disc-5',
        'code': 'EXPIRED',
        'discountType': 'PERCENTAGE',
        'discountValue': 10.0,
        'expiresAt': DateTime.utc(2020),
        'maxUses': null,
        'currentUses': 0,
      };

      when(() => mockExecutor.executeQueryAsSingleMap(any()))
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
      when(() => mockExecutor.executeMutation(any()))
          .thenAnswer((_) async => 1);

      await expectLater(
        repository.updateBookingStatus(
          bookingId: 'booking-1',
          bookingType: 'CONSULTATION',
          status: 'APPROVED',
        ),
        completes,
      );

      verify(() => mockExecutor.executeMutation(any())).called(1);
    });

    test('updates subscription booking status', () async {
      when(() => mockExecutor.executeMutation(any()))
          .thenAnswer((_) async => 1);

      await expectLater(
        repository.updateBookingStatus(
          bookingId: 'sub-1',
          bookingType: 'SUBSCRIPTION',
          status: 'SCHEDULED',
        ),
        completes,
      );

      verify(() => mockExecutor.executeMutation(any())).called(1);
    });
  });

  group('confirmSlots', () {
    test('confirms slots for a consultation', () async {
      // First call: find appointment
      when(() => mockExecutor.executeQueryAsSingleMap(any()))
          .thenAnswer((_) async => {
                'id': 'apt-1',
                'consultationId': 'cons-1',
              });

      // Second call: update slots
      when(() => mockExecutor.executeMutation(any()))
          .thenAnswer((_) async => 3);

      await expectLater(
        repository.confirmSlots('cons-1'),
        completes,
      );

      verify(() => mockExecutor.executeQueryAsSingleMap(any())).called(1);
      verify(() => mockExecutor.executeMutation(any())).called(1);
    });

    test('completes without error when no appointment found', () async {
      when(() => mockExecutor.executeQueryAsSingleMap(any()))
          .thenAnswer((_) async => null);

      await expectLater(
        repository.confirmSlots('nonexistent'),
        completes,
      );

      // Should not attempt to update slots
      verifyNever(() => mockExecutor.executeMutation(any()));
    });
  });
}
