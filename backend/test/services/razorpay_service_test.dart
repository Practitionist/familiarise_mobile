import 'dart:convert';

import 'package:backend/services/razorpay_service.dart';
import 'package:crypto/crypto.dart';
import 'package:test/test.dart';

void main() {
  group('RazorpayService', () {
    const testKeyId = 'rzp_test_key_id';
    const testKeySecret = 'rzp_test_key_secret_abc123';

    group('verifyPaymentSignature', () {
      late RazorpayService service;

      setUp(() {
        service = RazorpayService(
          keyId: testKeyId,
          keySecret: testKeySecret,
        );
      });

      test('returns true for valid signature', () {
        // Arrange
        const orderId = 'order_ABC123';
        const paymentId = 'pay_DEF456';
        final message = '$orderId|$paymentId';

        // Compute the correct HMAC-SHA256 signature
        final hmac = Hmac(sha256, utf8.encode(testKeySecret));
        final digest = hmac.convert(utf8.encode(message));
        final validSignature = digest.toString();

        // Act
        final result = service.verifyPaymentSignature(
          orderId: orderId,
          paymentId: paymentId,
          signature: validSignature,
        );

        // Assert
        expect(result, isTrue);
      });

      test('returns false for invalid signature', () {
        final result = service.verifyPaymentSignature(
          orderId: 'order_ABC123',
          paymentId: 'pay_DEF456',
          signature: 'invalid_signature_value',
        );

        expect(result, isFalse);
      });

      test('returns false for signature from different order', () {
        // Compute signature for a different order
        const wrongOrderId = 'order_WRONG';
        const paymentId = 'pay_DEF456';
        final message = '$wrongOrderId|$paymentId';
        final hmac = Hmac(sha256, utf8.encode(testKeySecret));
        final digest = hmac.convert(utf8.encode(message));
        final wrongSignature = digest.toString();

        // Try to verify with the correct order ID
        final result = service.verifyPaymentSignature(
          orderId: 'order_ABC123',
          paymentId: paymentId,
          signature: wrongSignature,
        );

        expect(result, isFalse);
      });

      test('returns false for signature from different payment', () {
        const orderId = 'order_ABC123';
        const wrongPaymentId = 'pay_WRONG';
        final message = '$orderId|$wrongPaymentId';
        final hmac = Hmac(sha256, utf8.encode(testKeySecret));
        final digest = hmac.convert(utf8.encode(message));
        final wrongSignature = digest.toString();

        final result = service.verifyPaymentSignature(
          orderId: orderId,
          paymentId: 'pay_DEF456',
          signature: wrongSignature,
        );

        expect(result, isFalse);
      });

      test('returns false for empty signature', () {
        final result = service.verifyPaymentSignature(
          orderId: 'order_ABC123',
          paymentId: 'pay_DEF456',
          signature: '',
        );

        expect(result, isFalse);
      });

      test('signature changes with different key secret', () {
        // Create another service with a different key secret
        final otherService = RazorpayService(
          keyId: testKeyId,
          keySecret: 'different_secret',
        );

        const orderId = 'order_ABC123';
        const paymentId = 'pay_DEF456';
        final message = '$orderId|$paymentId';

        // Compute signature with original secret
        final hmac = Hmac(sha256, utf8.encode(testKeySecret));
        final digest = hmac.convert(utf8.encode(message));
        final signature = digest.toString();

        // Verify with the other service (different secret) should fail
        final result = otherService.verifyPaymentSignature(
          orderId: orderId,
          paymentId: paymentId,
          signature: signature,
        );

        expect(result, isFalse);
      });
    });

    group('RazorpayOrder', () {
      test('fromJson creates valid object', () {
        final json = {
          'id': 'order_ABC123',
          'entity': 'order',
          'amount': 50000,
          'amount_paid': 0,
          'amount_due': 50000,
          'currency': 'INR',
          'receipt': 'receipt_1',
          'status': 'created',
          'created_at': 1631234567,
        };

        final order = RazorpayOrder.fromJson(json);

        expect(order.id, equals('order_ABC123'));
        expect(order.entity, equals('order'));
        expect(order.amount, equals(50000));
        expect(order.amountPaid, equals(0));
        expect(order.amountDue, equals(50000));
        expect(order.currency, equals('INR'));
        expect(order.receipt, equals('receipt_1'));
        expect(order.status, equals('created'));
        expect(order.createdAt, equals(1631234567));
      });

      test('fromJson handles null receipt', () {
        final json = {
          'id': 'order_XYZ',
          'entity': 'order',
          'amount': 10000,
          'amount_paid': 10000,
          'amount_due': 0,
          'currency': 'INR',
          'receipt': null,
          'status': 'paid',
          'created_at': 1631234999,
        };

        final order = RazorpayOrder.fromJson(json);
        expect(order.receipt, isNull);
        expect(order.status, equals('paid'));
      });

      test('toJson produces correct map', () {
        final order = RazorpayOrder(
          id: 'order_TEST',
          entity: 'order',
          amount: 25000,
          amountPaid: 25000,
          amountDue: 0,
          currency: 'INR',
          receipt: 'test_receipt',
          status: 'paid',
          createdAt: 1631200000,
        );

        final json = order.toJson();

        expect(json['id'], equals('order_TEST'));
        expect(json['amount'], equals(25000));
        expect(json['amount_paid'], equals(25000));
        expect(json['amount_due'], equals(0));
        expect(json['currency'], equals('INR'));
        expect(json['receipt'], equals('test_receipt'));
        expect(json['status'], equals('paid'));
        expect(json['created_at'], equals(1631200000));
      });
    });

    group('RazorpayException', () {
      test('toString includes all details', () {
        final exception = RazorpayException(
          message: 'Order creation failed',
          statusCode: 400,
          responseBody: '{"error":"bad_request"}',
        );

        final str = exception.toString();
        expect(str, contains('Order creation failed'));
        expect(str, contains('400'));
        expect(str, contains('bad_request'));
      });

      test('handles null optional fields', () {
        final exception = RazorpayException(
          message: 'Network error',
        );

        final str = exception.toString();
        expect(str, contains('Network error'));
        expect(str, contains('null'));
      });
    });
  });
}
