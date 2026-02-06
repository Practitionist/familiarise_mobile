import 'package:backend/database/database_client.dart';
import 'package:backend/database/repositories/checkout_repository.dart';
import 'package:backend/database/repositories/dispute_repository.dart';
import 'package:backend/database/repositories/refund_repository.dart';
import 'package:backend/services/stream_service.dart';
import 'package:backend/services/webhook_handlers.dart';
import 'package:mocktail/mocktail.dart';
import 'package:prisma_flutter_connector/runtime_server.dart';
import 'package:test/test.dart';

// Mocks
class MockDatabaseClient extends Mock implements DatabaseClient {}

class MockCheckoutRepository extends Mock implements CheckoutRepository {}

class MockRefundRepository extends Mock implements RefundRepository {}

class MockDisputeRepository extends Mock implements DisputeRepository {}

class MockStreamService extends Mock implements StreamService {}

class MockQueryExecutor extends Mock implements QueryExecutor {}

class FakeJsonQuery extends Fake implements JsonQuery {}

void main() {
  setUpAll(() {
    registerFallbackValue(FakeJsonQuery());
  });

  late MockDatabaseClient mockDb;
  late MockCheckoutRepository mockCheckout;
  late MockRefundRepository mockRefunds;
  late MockDisputeRepository mockDisputes;
  late MockStreamService mockStreamService;
  late MockQueryExecutor mockExecutor;
  late WebhookHandlers handlers;

  setUp(() {
    mockDb = MockDatabaseClient();
    mockCheckout = MockCheckoutRepository();
    mockRefunds = MockRefundRepository();
    mockDisputes = MockDisputeRepository();
    mockStreamService = MockStreamService();
    mockExecutor = MockQueryExecutor();

    when(() => mockDb.checkout).thenReturn(mockCheckout);
    when(() => mockDb.refunds).thenReturn(mockRefunds);
    when(() => mockDb.disputes).thenReturn(mockDisputes);
    when(() => mockDb.executor).thenReturn(mockExecutor);

    handlers = WebhookHandlers(mockDb, streamService: mockStreamService);
  });

  group('handlePaymentSuccess', () {
    test('updates payment status to SUCCEEDED', () async {
      // Arrange
      final payment = {
        'id': 'payment-1',
        'appointmentId': null,
        'paymentStatus': 'PENDING',
      };

      when(() => mockExecutor.executeQueryAsSingleMap(any()))
          .thenAnswer((_) async => payment);

      when(() => mockCheckout.updatePaymentStatus(
            paymentId: 'payment-1',
            status: 'SUCCEEDED',
          )).thenAnswer((_) async {});

      // Act
      await handlers.handlePaymentSuccess(
        paymentIntentOrOrderId: 'pi_test_123',
        gateway: 'STRIPE',
      );

      // Assert
      verify(() => mockCheckout.updatePaymentStatus(
            paymentId: 'payment-1',
            status: 'SUCCEEDED',
          )).called(1);
    });

    test('skips processing when payment not found', () async {
      // Arrange
      when(() => mockExecutor.executeQueryAsSingleMap(any()))
          .thenAnswer((_) async => null);

      // Act
      await handlers.handlePaymentSuccess(
        paymentIntentOrOrderId: 'pi_nonexistent',
        gateway: 'STRIPE',
      );

      // Assert - should not attempt to update
      verifyNever(() => mockCheckout.updatePaymentStatus(
            paymentId: any(named: 'paymentId'),
            status: any(named: 'status'),
          ));
    });

    test('skips processing when payment already SUCCEEDED', () async {
      // Arrange
      final payment = {
        'id': 'payment-1',
        'appointmentId': null,
        'paymentStatus': 'SUCCEEDED',
      };

      when(() => mockExecutor.executeQueryAsSingleMap(any()))
          .thenAnswer((_) async => payment);

      // Act
      await handlers.handlePaymentSuccess(
        paymentIntentOrOrderId: 'pi_already_done',
        gateway: 'STRIPE',
      );

      // Assert - should not update again
      verifyNever(() => mockCheckout.updatePaymentStatus(
            paymentId: any(named: 'paymentId'),
            status: any(named: 'status'),
          ));
    });

    test('confirms booking when appointmentId is present (consultation)',
        () async {
      // Arrange
      final payment = {
        'id': 'payment-1',
        'appointmentId': 'appointment-1',
        'paymentStatus': 'PENDING',
      };

      var singleMapCallCount = 0;
      when(() => mockExecutor.executeQueryAsSingleMap(any()))
          .thenAnswer((_) async {
        singleMapCallCount++;
        if (singleMapCallCount == 1) {
          // First call: _findPaymentByIntent
          return payment;
        }
        // Second call: appointment query
        return {
          'id': 'appointment-1',
          'consultationId': 'consultation-1',
          'subscriptionId': null,
          'webinarId': null,
          'classId': null,
          'appointmentType': 'CONSULTATION',
        };
      });

      when(() => mockCheckout.updatePaymentStatus(
            paymentId: any(named: 'paymentId'),
            status: any(named: 'status'),
          )).thenAnswer((_) async {});

      when(() => mockCheckout.updateBookingStatus(
            bookingId: any(named: 'bookingId'),
            bookingType: any(named: 'bookingType'),
            status: any(named: 'status'),
          )).thenAnswer((_) async {});

      when(() => mockCheckout.confirmSlots(any())).thenAnswer((_) async {});

      // Act
      await handlers.handlePaymentSuccess(
        paymentIntentOrOrderId: 'pi_with_appointment',
        gateway: 'RAZORPAY',
      );

      // Assert
      verify(() => mockCheckout.updatePaymentStatus(
            paymentId: 'payment-1',
            status: 'SUCCEEDED',
          )).called(1);
    });
  });

  group('handlePaymentFailure', () {
    test('updates payment status to FAILED', () async {
      // Arrange
      final payment = {
        'id': 'payment-2',
        'paymentStatus': 'PENDING',
      };

      when(() => mockExecutor.executeQueryAsSingleMap(any()))
          .thenAnswer((_) async => payment);

      when(() => mockCheckout.updatePaymentStatus(
            paymentId: 'payment-2',
            status: 'FAILED',
          )).thenAnswer((_) async {});

      // Act
      await handlers.handlePaymentFailure(
        paymentIntentOrOrderId: 'pi_failed_123',
        gateway: 'STRIPE',
        reason: 'card_declined',
      );

      // Assert
      verify(() => mockCheckout.updatePaymentStatus(
            paymentId: 'payment-2',
            status: 'FAILED',
          )).called(1);
    });

    test('skips when payment not found', () async {
      // Arrange
      when(() => mockExecutor.executeQueryAsSingleMap(any()))
          .thenAnswer((_) async => null);

      // Act
      await handlers.handlePaymentFailure(
        paymentIntentOrOrderId: 'pi_nonexistent',
        gateway: 'RAZORPAY',
      );

      // Assert
      verifyNever(() => mockCheckout.updatePaymentStatus(
            paymentId: any(named: 'paymentId'),
            status: any(named: 'status'),
          ));
    });

    test('skips when payment already FAILED', () async {
      // Arrange
      final payment = {
        'id': 'payment-2',
        'paymentStatus': 'FAILED',
      };

      when(() => mockExecutor.executeQueryAsSingleMap(any()))
          .thenAnswer((_) async => payment);

      // Act
      await handlers.handlePaymentFailure(
        paymentIntentOrOrderId: 'pi_already_failed',
        gateway: 'STRIPE',
      );

      // Assert
      verifyNever(() => mockCheckout.updatePaymentStatus(
            paymentId: any(named: 'paymentId'),
            status: any(named: 'status'),
          ));
    });

    test('skips when payment already SUCCEEDED', () async {
      // Arrange
      final payment = {
        'id': 'payment-3',
        'paymentStatus': 'SUCCEEDED',
      };

      when(() => mockExecutor.executeQueryAsSingleMap(any()))
          .thenAnswer((_) async => payment);

      // Act
      await handlers.handlePaymentFailure(
        paymentIntentOrOrderId: 'pi_succeeded',
        gateway: 'STRIPE',
      );

      // Assert
      verifyNever(() => mockCheckout.updatePaymentStatus(
            paymentId: any(named: 'paymentId'),
            status: any(named: 'status'),
          ));
    });
  });

  group('handleRefundProcessed', () {
    test('creates refund record with mapped status', () async {
      // Arrange
      final payment = {
        'id': 'payment-4',
        'paymentStatus': 'SUCCEEDED',
      };

      when(() => mockExecutor.executeQueryAsSingleMap(any()))
          .thenAnswer((_) async => payment);

      when(() => mockRefunds.createRefund(
            refundId: any(named: 'refundId'),
            paymentId: any(named: 'paymentId'),
            amount: any(named: 'amount'),
            currency: any(named: 'currency'),
            status: any(named: 'status'),
            paymentGateway: any(named: 'paymentGateway'),
            reason: any(named: 'reason'),
          )).thenAnswer((_) async => {'id': 'refund-1'});

      // Act
      await handlers.handleRefundProcessed(
        refundId: 're_123',
        paymentIntentOrOrderId: 'pi_refunded',
        amount: 5000,
        currency: 'usd',
        status: 'succeeded',
        gateway: 'STRIPE',
        reason: 'requested_by_customer',
      );

      // Assert
      verify(() => mockRefunds.createRefund(
            refundId: 're_123',
            paymentId: 'payment-4',
            amount: 5000,
            currency: 'usd',
            status: 'SUCCEEDED',
            paymentGateway: 'STRIPE',
            reason: 'requested_by_customer',
          )).called(1);
    });

    test('skips when payment not found', () async {
      // Arrange
      when(() => mockExecutor.executeQueryAsSingleMap(any()))
          .thenAnswer((_) async => null);

      // Act
      await handlers.handleRefundProcessed(
        refundId: 're_no_payment',
        paymentIntentOrOrderId: 'pi_nonexistent',
        amount: 1000,
        currency: 'inr',
        status: 'processed',
        gateway: 'RAZORPAY',
      );

      // Assert
      verifyNever(() => mockRefunds.createRefund(
            refundId: any(named: 'refundId'),
            paymentId: any(named: 'paymentId'),
            amount: any(named: 'amount'),
            currency: any(named: 'currency'),
            status: any(named: 'status'),
            paymentGateway: any(named: 'paymentGateway'),
            reason: any(named: 'reason'),
          ));
    });

    test('maps "processed" status to SUCCEEDED', () async {
      // Arrange
      when(() => mockExecutor.executeQueryAsSingleMap(any()))
          .thenAnswer((_) async => {'id': 'payment-5'});

      when(() => mockRefunds.createRefund(
            refundId: any(named: 'refundId'),
            paymentId: any(named: 'paymentId'),
            amount: any(named: 'amount'),
            currency: any(named: 'currency'),
            status: any(named: 'status'),
            paymentGateway: any(named: 'paymentGateway'),
            reason: any(named: 'reason'),
          )).thenAnswer((_) async => {'id': 'refund-2'});

      // Act
      await handlers.handleRefundProcessed(
        refundId: 're_razorpay',
        paymentIntentOrOrderId: 'order_123',
        amount: 50000,
        currency: 'inr',
        status: 'processed',
        gateway: 'RAZORPAY',
      );

      // Assert - status should be mapped to SUCCEEDED
      verify(() => mockRefunds.createRefund(
            refundId: 're_razorpay',
            paymentId: 'payment-5',
            amount: 50000,
            currency: 'inr',
            status: 'SUCCEEDED',
            paymentGateway: 'RAZORPAY',
            reason: null,
          )).called(1);
    });

    test('maps "pending" status to PENDING', () async {
      when(() => mockExecutor.executeQueryAsSingleMap(any()))
          .thenAnswer((_) async => {'id': 'payment-6'});

      when(() => mockRefunds.createRefund(
            refundId: any(named: 'refundId'),
            paymentId: any(named: 'paymentId'),
            amount: any(named: 'amount'),
            currency: any(named: 'currency'),
            status: any(named: 'status'),
            paymentGateway: any(named: 'paymentGateway'),
            reason: any(named: 'reason'),
          )).thenAnswer((_) async => {'id': 'refund-3'});

      await handlers.handleRefundProcessed(
        refundId: 're_pending',
        paymentIntentOrOrderId: 'pi_pending',
        amount: 3000,
        currency: 'usd',
        status: 'pending',
        gateway: 'STRIPE',
      );

      verify(() => mockRefunds.createRefund(
            refundId: 're_pending',
            paymentId: 'payment-6',
            amount: 3000,
            currency: 'usd',
            status: 'PENDING',
            paymentGateway: 'STRIPE',
            reason: null,
          )).called(1);
    });

    test('maps unknown status to PENDING', () async {
      when(() => mockExecutor.executeQueryAsSingleMap(any()))
          .thenAnswer((_) async => {'id': 'payment-7'});

      when(() => mockRefunds.createRefund(
            refundId: any(named: 'refundId'),
            paymentId: any(named: 'paymentId'),
            amount: any(named: 'amount'),
            currency: any(named: 'currency'),
            status: any(named: 'status'),
            paymentGateway: any(named: 'paymentGateway'),
            reason: any(named: 'reason'),
          )).thenAnswer((_) async => {'id': 'refund-4'});

      await handlers.handleRefundProcessed(
        refundId: 're_unknown',
        paymentIntentOrOrderId: 'pi_unknown',
        amount: 1000,
        currency: 'usd',
        status: 'some_unknown_status',
        gateway: 'STRIPE',
      );

      verify(() => mockRefunds.createRefund(
            refundId: 're_unknown',
            paymentId: 'payment-7',
            amount: 1000,
            currency: 'usd',
            status: 'PENDING',
            paymentGateway: 'STRIPE',
            reason: null,
          )).called(1);
    });
  });

  group('handleDisputeCreated', () {
    test('creates dispute record', () async {
      // Arrange
      final payment = {
        'id': 'payment-8',
        'paymentStatus': 'SUCCEEDED',
      };

      when(() => mockExecutor.executeQueryAsSingleMap(any()))
          .thenAnswer((_) async => payment);

      when(() => mockDisputes.createDispute(
            disputeId: any(named: 'disputeId'),
            paymentId: any(named: 'paymentId'),
            amount: any(named: 'amount'),
            currency: any(named: 'currency'),
            reason: any(named: 'reason'),
            status: any(named: 'status'),
            paymentGateway: any(named: 'paymentGateway'),
            dueBy: any(named: 'dueBy'),
            isChargeRefundable: any(named: 'isChargeRefundable'),
          )).thenAnswer((_) async => {'id': 'dispute-1'});

      // Act
      await handlers.handleDisputeCreated(
        paymentIntentOrOrderId: 'pi_disputed',
        disputeId: 'dp_123',
        amount: 5000,
        currency: 'usd',
        reason: 'fraudulent',
        status: 'needs_response',
        gateway: 'STRIPE',
      );

      // Assert
      verify(() => mockDisputes.createDispute(
            disputeId: 'dp_123',
            paymentId: 'payment-8',
            amount: 5000,
            currency: 'usd',
            reason: 'fraudulent',
            status: 'needs_response',
            paymentGateway: 'STRIPE',
            dueBy: null,
            isChargeRefundable: true,
          )).called(1);
    });

    test('skips when payment not found', () async {
      // Arrange
      when(() => mockExecutor.executeQueryAsSingleMap(any()))
          .thenAnswer((_) async => null);

      // Act
      await handlers.handleDisputeCreated(
        paymentIntentOrOrderId: 'pi_nonexistent',
        disputeId: 'dp_no_payment',
        amount: 1000,
        currency: 'usd',
        reason: 'chargeback',
        status: 'open',
        gateway: 'STRIPE',
      );

      // Assert
      verifyNever(() => mockDisputes.createDispute(
            disputeId: any(named: 'disputeId'),
            paymentId: any(named: 'paymentId'),
            amount: any(named: 'amount'),
            currency: any(named: 'currency'),
            reason: any(named: 'reason'),
            status: any(named: 'status'),
            paymentGateway: any(named: 'paymentGateway'),
            dueBy: any(named: 'dueBy'),
            isChargeRefundable: any(named: 'isChargeRefundable'),
          ));
    });

    test('passes dueBy and isChargeRefundable fields', () async {
      // Arrange
      when(() => mockExecutor.executeQueryAsSingleMap(any()))
          .thenAnswer((_) async => {'id': 'payment-9'});

      final dueDate = DateTime(2025, 6, 15);

      when(() => mockDisputes.createDispute(
            disputeId: any(named: 'disputeId'),
            paymentId: any(named: 'paymentId'),
            amount: any(named: 'amount'),
            currency: any(named: 'currency'),
            reason: any(named: 'reason'),
            status: any(named: 'status'),
            paymentGateway: any(named: 'paymentGateway'),
            dueBy: any(named: 'dueBy'),
            isChargeRefundable: any(named: 'isChargeRefundable'),
          )).thenAnswer((_) async => {'id': 'dispute-2'});

      // Act
      await handlers.handleDisputeCreated(
        paymentIntentOrOrderId: 'pi_disputed_2',
        disputeId: 'dp_456',
        amount: 10000,
        currency: 'inr',
        reason: 'product_not_received',
        status: 'open',
        gateway: 'RAZORPAY',
        dueBy: dueDate,
        isChargeRefundable: false,
      );

      // Assert
      verify(() => mockDisputes.createDispute(
            disputeId: 'dp_456',
            paymentId: 'payment-9',
            amount: 10000,
            currency: 'inr',
            reason: 'product_not_received',
            status: 'open',
            paymentGateway: 'RAZORPAY',
            dueBy: dueDate,
            isChargeRefundable: false,
          )).called(1);
    });
  });
}
