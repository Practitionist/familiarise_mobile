import 'package:familiarise_mobile/core/errors/exceptions.dart';
import 'package:familiarise_mobile/core/errors/failures.dart';
import 'package:familiarise_mobile/core/network/network_info.dart';
import 'package:familiarise_mobile/data/datasources/remote/checkout_remote_source.dart';
import 'package:familiarise_mobile/data/models/checkout/checkout_models.dart';
import 'package:familiarise_mobile/data/repositories/checkout_repository_impl.dart';
import 'package:familiarise_mobile/domain/entities/checkout/checkout_entities.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

// Mock classes
class MockCheckoutRemoteSource extends Mock implements CheckoutRemoteSource {}

class MockNetworkInfo extends Mock implements NetworkInfo {}

void main() {
  late CheckoutRepositoryImpl repository;
  late MockCheckoutRemoteSource mockRemoteSource;
  late MockNetworkInfo mockNetworkInfo;

  setUp(() {
    mockRemoteSource = MockCheckoutRemoteSource();
    mockNetworkInfo = MockNetworkInfo();
    repository = CheckoutRepositoryImpl(
      remoteSource: mockRemoteSource,
      networkInfo: mockNetworkInfo,
    );
  });

  // Test data
  const testBookingId = 'booking-123';
  const testBookingType = 'CONSULTATION';
  const testPaymentId = 'payment-456';
  const testGateway = PaymentGatewayType.razorpay;

  final testCheckoutResponse = CheckoutResponseModel(
    paymentId: testPaymentId,
    gateway: 'razorpay',
    amount: 1000.0,
    currency: 'INR',
    razorpayOrderId: 'order_abc123',
  );

  final testPaymentVerificationModel = PaymentVerificationModel(
    success: true,
    paymentStatus: 'SUCCEEDED',
    appointmentId: 'appointment-789',
    bookingType: 'CONSULTATION',
  );

  final testDiscountValidationModel = DiscountValidationModel(
    valid: true,
    discountType: 'percentage',
    discountPercentage: 10.0,
    description: '10% off',
  );

  group('createCheckout', () {
    test('should return CheckoutSession when creation is successful', () async {
      // Arrange
      when(() => mockNetworkInfo.isConnected).thenAnswer((_) async => true);
      when(() => mockRemoteSource.createCheckout(
            bookingId: any(named: 'bookingId'),
            bookingType: any(named: 'bookingType'),
            paymentGateway: any(named: 'paymentGateway'),
            discountCode: any(named: 'discountCode'),
          )).thenAnswer((_) async => testCheckoutResponse);

      // Act
      final result = await repository.createCheckout(
        bookingId: testBookingId,
        bookingType: testBookingType,
        gateway: testGateway,
      );

      // Assert
      expect(result.isRight(), true);
      result.fold(
        (failure) => fail('Expected Right but got Left: $failure'),
        (session) {
          expect(session.paymentId, testPaymentId);
          expect(session.gateway, PaymentGatewayType.razorpay);
          expect(session.amount, 1000.0);
          expect(session.currency, 'INR');
        },
      );
    });

    test('should return NetworkFailure when no internet connection', () async {
      // Arrange
      when(() => mockNetworkInfo.isConnected).thenAnswer((_) async => false);

      // Act
      final result = await repository.createCheckout(
        bookingId: testBookingId,
        bookingType: testBookingType,
        gateway: testGateway,
      );

      // Assert
      expect(result.isLeft(), true);
      result.fold(
        (failure) => expect(failure, isA<NetworkFailure>()),
        (_) => fail('Expected Left but got Right'),
      );
      verifyNever(() => mockRemoteSource.createCheckout(
            bookingId: any(named: 'bookingId'),
            bookingType: any(named: 'bookingType'),
            paymentGateway: any(named: 'paymentGateway'),
            discountCode: any(named: 'discountCode'),
          ));
    });

    test('should return AuthFailure when AuthException is thrown', () async {
      // Arrange
      when(() => mockNetworkInfo.isConnected).thenAnswer((_) async => true);
      when(() => mockRemoteSource.createCheckout(
            bookingId: any(named: 'bookingId'),
            bookingType: any(named: 'bookingType'),
            paymentGateway: any(named: 'paymentGateway'),
            discountCode: any(named: 'discountCode'),
          )).thenThrow(const AuthException(message: 'Session expired'));

      // Act
      final result = await repository.createCheckout(
        bookingId: testBookingId,
        bookingType: testBookingType,
        gateway: testGateway,
      );

      // Assert
      expect(result.isLeft(), true);
      result.fold(
        (failure) {
          expect(failure, isA<AuthFailure>());
          expect((failure as AuthFailure).message, 'Session expired');
        },
        (_) => fail('Expected Left but got Right'),
      );
    });

    test('should return ServerFailure when ServerException is thrown',
        () async {
      // Arrange
      when(() => mockNetworkInfo.isConnected).thenAnswer((_) async => true);
      when(() => mockRemoteSource.createCheckout(
            bookingId: any(named: 'bookingId'),
            bookingType: any(named: 'bookingType'),
            paymentGateway: any(named: 'paymentGateway'),
            discountCode: any(named: 'discountCode'),
          )).thenThrow(const ServerException(
        message: 'Server error',
        statusCode: 500,
      ));

      // Act
      final result = await repository.createCheckout(
        bookingId: testBookingId,
        bookingType: testBookingType,
        gateway: testGateway,
      );

      // Assert
      expect(result.isLeft(), true);
      result.fold(
        (failure) {
          expect(failure, isA<ServerFailure>());
          expect((failure as ServerFailure).statusCode, 500);
        },
        (_) => fail('Expected Left but got Right'),
      );
    });

    test('should return SlotConflictFailure when SlotConflictException thrown',
        () async {
      // Arrange
      when(() => mockNetworkInfo.isConnected).thenAnswer((_) async => true);
      when(() => mockRemoteSource.createCheckout(
            bookingId: any(named: 'bookingId'),
            bookingType: any(named: 'bookingType'),
            paymentGateway: any(named: 'paymentGateway'),
            discountCode: any(named: 'discountCode'),
          )).thenThrow(const SlotConflictException(
        message: 'Slot conflict',
        conflictingSlots: ['2024-07-01T10:00:00Z'],
      ));

      // Act
      final result = await repository.createCheckout(
        bookingId: testBookingId,
        bookingType: testBookingType,
        gateway: testGateway,
      );

      // Assert
      expect(result.isLeft(), true);
      result.fold(
        (failure) {
          expect(failure, isA<SlotConflictFailure>());
        },
        (_) => fail('Expected Left but got Right'),
      );
    });

    test('should return NotFoundFailure when NotFoundException is thrown',
        () async {
      // Arrange
      when(() => mockNetworkInfo.isConnected).thenAnswer((_) async => true);
      when(() => mockRemoteSource.createCheckout(
            bookingId: any(named: 'bookingId'),
            bookingType: any(named: 'bookingType'),
            paymentGateway: any(named: 'paymentGateway'),
            discountCode: any(named: 'discountCode'),
          )).thenThrow(const NotFoundException(resource: 'Booking'));

      // Act
      final result = await repository.createCheckout(
        bookingId: testBookingId,
        bookingType: testBookingType,
        gateway: testGateway,
      );

      // Assert
      expect(result.isLeft(), true);
      result.fold(
        (failure) => expect(failure, isA<NotFoundFailure>()),
        (_) => fail('Expected Left but got Right'),
      );
    });

    test('should return UnknownFailure for unexpected exceptions', () async {
      // Arrange
      when(() => mockNetworkInfo.isConnected).thenAnswer((_) async => true);
      when(() => mockRemoteSource.createCheckout(
            bookingId: any(named: 'bookingId'),
            bookingType: any(named: 'bookingType'),
            paymentGateway: any(named: 'paymentGateway'),
            discountCode: any(named: 'discountCode'),
          )).thenThrow(Exception('Something unexpected'));

      // Act
      final result = await repository.createCheckout(
        bookingId: testBookingId,
        bookingType: testBookingType,
        gateway: testGateway,
      );

      // Assert
      expect(result.isLeft(), true);
      result.fold(
        (failure) => expect(failure, isA<UnknownFailure>()),
        (_) => fail('Expected Left but got Right'),
      );
    });
  });

  group('createDirectCheckout', () {
    test('should return CheckoutSession on successful direct checkout',
        () async {
      // Arrange
      when(() => mockNetworkInfo.isConnected).thenAnswer((_) async => true);
      when(() => mockRemoteSource.createDirectCheckout(
            consultantProfileId: any(named: 'consultantProfileId'),
            planId: any(named: 'planId'),
            appointmentType: any(named: 'appointmentType'),
            paymentGateway: any(named: 'paymentGateway'),
            slotStartTimeInUTC: any(named: 'slotStartTimeInUTC'),
            slotEndTimeInUTC: any(named: 'slotEndTimeInUTC'),
            slotOfAvailabilityWeeklyId:
                any(named: 'slotOfAvailabilityWeeklyId'),
            slotOfAvailabilityCustomId:
                any(named: 'slotOfAvailabilityCustomId'),
            schedulingPeriodStartsAt: any(named: 'schedulingPeriodStartsAt'),
            schedulingPeriodEndsAt: any(named: 'schedulingPeriodEndsAt'),
            discountCode: any(named: 'discountCode'),
            notes: any(named: 'notes'),
          )).thenAnswer((_) async => testCheckoutResponse);

      // Act
      final result = await repository.createDirectCheckout(
        consultantProfileId: 'profile-1',
        planId: 'plan-1',
        planType: 'consultation',
        gateway: testGateway,
      );

      // Assert
      expect(result.isRight(), true);
      result.fold(
        (failure) => fail('Expected Right but got Left: $failure'),
        (session) => expect(session.paymentId, testPaymentId),
      );
    });

    test('should return NetworkFailure when offline', () async {
      // Arrange
      when(() => mockNetworkInfo.isConnected).thenAnswer((_) async => false);

      // Act
      final result = await repository.createDirectCheckout(
        consultantProfileId: 'profile-1',
        planId: 'plan-1',
        planType: 'consultation',
        gateway: testGateway,
      );

      // Assert
      expect(result.isLeft(), true);
      result.fold(
        (failure) => expect(failure, isA<NetworkFailure>()),
        (_) => fail('Expected Left but got Right'),
      );
    });
  });

  group('verifyPayment', () {
    test('should return PaymentVerification on success', () async {
      // Arrange
      when(() => mockNetworkInfo.isConnected).thenAnswer((_) async => true);
      when(() => mockRemoteSource.verifyPayment(
            paymentId: any(named: 'paymentId'),
            razorpayPaymentId: any(named: 'razorpayPaymentId'),
            razorpaySignature: any(named: 'razorpaySignature'),
          )).thenAnswer((_) async => testPaymentVerificationModel);

      // Act
      final result = await repository.verifyPayment(
        paymentId: testPaymentId,
      );

      // Assert
      expect(result.isRight(), true);
      result.fold(
        (failure) => fail('Expected Right but got Left: $failure'),
        (verification) {
          expect(verification.success, true);
          expect(verification.isSuccessful, true);
          expect(verification.appointmentId, 'appointment-789');
        },
      );
    });

    test('should return NetworkFailure when no connection', () async {
      // Arrange
      when(() => mockNetworkInfo.isConnected).thenAnswer((_) async => false);

      // Act
      final result = await repository.verifyPayment(
        paymentId: testPaymentId,
      );

      // Assert
      expect(result.isLeft(), true);
      result.fold(
        (failure) => expect(failure, isA<NetworkFailure>()),
        (_) => fail('Expected Left but got Right'),
      );
    });

    test('should return AuthFailure when auth fails', () async {
      // Arrange
      when(() => mockNetworkInfo.isConnected).thenAnswer((_) async => true);
      when(() => mockRemoteSource.verifyPayment(
            paymentId: any(named: 'paymentId'),
            razorpayPaymentId: any(named: 'razorpayPaymentId'),
            razorpaySignature: any(named: 'razorpaySignature'),
          )).thenThrow(const AuthException(message: 'Token expired'));

      // Act
      final result = await repository.verifyPayment(
        paymentId: testPaymentId,
      );

      // Assert
      expect(result.isLeft(), true);
      result.fold(
        (failure) => expect(failure, isA<AuthFailure>()),
        (_) => fail('Expected Left but got Right'),
      );
    });

    test('should pass Razorpay credentials when provided', () async {
      // Arrange
      when(() => mockNetworkInfo.isConnected).thenAnswer((_) async => true);
      when(() => mockRemoteSource.verifyPayment(
            paymentId: any(named: 'paymentId'),
            razorpayPaymentId: any(named: 'razorpayPaymentId'),
            razorpaySignature: any(named: 'razorpaySignature'),
          )).thenAnswer((_) async => testPaymentVerificationModel);

      // Act
      await repository.verifyPayment(
        paymentId: testPaymentId,
        razorpayPaymentId: 'razorpay_pay_123',
        razorpaySignature: 'sig_abc',
      );

      // Assert
      verify(() => mockRemoteSource.verifyPayment(
            paymentId: testPaymentId,
            razorpayPaymentId: 'razorpay_pay_123',
            razorpaySignature: 'sig_abc',
          )).called(1);
    });
  });

  group('validateDiscountCode', () {
    test('should return DiscountInfo when code is valid', () async {
      // Arrange
      when(() => mockNetworkInfo.isConnected).thenAnswer((_) async => true);
      when(() => mockRemoteSource.validateDiscountCode(
            code: any(named: 'code'),
            bookingId: any(named: 'bookingId'),
            amount: any(named: 'amount'),
          )).thenAnswer((_) async => testDiscountValidationModel);

      // Act
      final result = await repository.validateDiscountCode(
        code: 'SAVE10',
        bookingId: testBookingId,
        amount: 1000.0,
      );

      // Assert
      expect(result.isRight(), true);
      result.fold(
        (failure) => fail('Expected Right but got Left: $failure'),
        (discountInfo) {
          expect(discountInfo.isValid, true);
          expect(discountInfo.discountType, DiscountType.percentage);
          expect(discountInfo.discountPercentage, 10.0);
        },
      );
    });

    test('should return ValidationFailure when code is invalid', () async {
      // Arrange
      when(() => mockNetworkInfo.isConnected).thenAnswer((_) async => true);
      when(() => mockRemoteSource.validateDiscountCode(
            code: any(named: 'code'),
            bookingId: any(named: 'bookingId'),
            amount: any(named: 'amount'),
          )).thenAnswer((_) async => DiscountValidationModel(
            valid: false,
            message: 'Code expired',
          ));

      // Act
      final result = await repository.validateDiscountCode(
        code: 'EXPIRED',
        bookingId: testBookingId,
      );

      // Assert
      expect(result.isLeft(), true);
      result.fold(
        (failure) => expect(failure, isA<ValidationFailure>()),
        (_) => fail('Expected Left but got Right'),
      );
    });

    test('should return NetworkFailure when offline', () async {
      // Arrange
      when(() => mockNetworkInfo.isConnected).thenAnswer((_) async => false);

      // Act
      final result = await repository.validateDiscountCode(
        code: 'SAVE10',
        bookingId: testBookingId,
      );

      // Assert
      expect(result.isLeft(), true);
      result.fold(
        (failure) => expect(failure, isA<NetworkFailure>()),
        (_) => fail('Expected Left but got Right'),
      );
    });

    test('should return ServerFailure when server error occurs', () async {
      // Arrange
      when(() => mockNetworkInfo.isConnected).thenAnswer((_) async => true);
      when(() => mockRemoteSource.validateDiscountCode(
            code: any(named: 'code'),
            bookingId: any(named: 'bookingId'),
            amount: any(named: 'amount'),
          )).thenThrow(const ServerException(
        message: 'Internal server error',
        statusCode: 500,
      ));

      // Act
      final result = await repository.validateDiscountCode(
        code: 'SAVE10',
        bookingId: testBookingId,
      );

      // Assert
      expect(result.isLeft(), true);
      result.fold(
        (failure) => expect(failure, isA<ServerFailure>()),
        (_) => fail('Expected Left but got Right'),
      );
    });
  });
}
