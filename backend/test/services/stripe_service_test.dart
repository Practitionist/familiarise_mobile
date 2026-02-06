import 'dart:convert';

import 'package:backend/services/stripe_service.dart';
import 'package:crypto/crypto.dart';
import 'package:test/test.dart';

void main() {
  group('StripeService', () {
    group('verifyWebhookSignature', () {
      const webhookSecret = 'whsec_test_secret_key';
      late StripeService service;

      setUp(() {
        service = StripeService(
          secretKey: 'sk_test_key',
          webhookSecret: webhookSecret,
        );
      });

      test('returns true for valid signature with correct timestamp', () {
        // Arrange
        final payload = '{"type":"payment_intent.succeeded"}';
        final timestamp =
            (DateTime.now().millisecondsSinceEpoch ~/ 1000).toString();
        final signedPayload = '$timestamp.$payload';
        final hmac = Hmac(sha256, utf8.encode(webhookSecret));
        final digest = hmac.convert(utf8.encode(signedPayload));
        final signature = 't=$timestamp,v1=${digest.toString()}';

        // Act
        final result = service.verifyWebhookSignature(
          payload: payload,
          signature: signature,
        );

        // Assert
        expect(result, isTrue);
      });

      test('returns false for invalid signature', () {
        final payload = '{"type":"payment_intent.succeeded"}';
        final timestamp =
            (DateTime.now().millisecondsSinceEpoch ~/ 1000).toString();
        final signature = 't=$timestamp,v1=invalidsignaturevalue';

        final result = service.verifyWebhookSignature(
          payload: payload,
          signature: signature,
        );

        expect(result, isFalse);
      });

      test('returns false for expired timestamp (older than 5 minutes)', () {
        final payload = '{"type":"payment_intent.succeeded"}';
        // Timestamp 10 minutes in the past
        final oldTimestamp =
            ((DateTime.now().millisecondsSinceEpoch ~/ 1000) - 600).toString();
        final signedPayload = '$oldTimestamp.$payload';
        final hmac = Hmac(sha256, utf8.encode(webhookSecret));
        final digest = hmac.convert(utf8.encode(signedPayload));
        final signature = 't=$oldTimestamp,v1=${digest.toString()}';

        final result = service.verifyWebhookSignature(
          payload: payload,
          signature: signature,
        );

        expect(result, isFalse);
      });

      test('returns false when timestamp is missing', () {
        final result = service.verifyWebhookSignature(
          payload: '{}',
          signature: 'v1=somesignature',
        );

        expect(result, isFalse);
      });

      test('returns false when v1 signature is missing', () {
        final result = service.verifyWebhookSignature(
          payload: '{}',
          signature: 't=1234567890',
        );

        expect(result, isFalse);
      });

      test('returns false for malformed signature header', () {
        final result = service.verifyWebhookSignature(
          payload: '{}',
          signature: 'completely-invalid-format',
        );

        expect(result, isFalse);
      });

      test('returns false for non-numeric timestamp', () {
        final result = service.verifyWebhookSignature(
          payload: '{}',
          signature: 't=notatimestamp,v1=somesignature',
        );

        expect(result, isFalse);
      });

      test('throws StripeException when webhook secret is not configured', () {
        final serviceWithoutSecret = StripeService(
          secretKey: 'sk_test_key',
        );

        expect(
          () => serviceWithoutSecret.verifyWebhookSignature(
            payload: '{}',
            signature: 't=123,v1=abc',
          ),
          throwsA(isA<StripeException>().having(
            (e) => e.message,
            'message',
            contains('Webhook secret not configured'),
          )),
        );
      });
    });

    group('StripePaymentIntent', () {
      test('fromJson creates valid object', () {
        final json = {
          'id': 'pi_123',
          'client_secret': 'pi_123_secret_abc',
          'amount': 5000,
          'currency': 'usd',
          'status': 'requires_payment_method',
          'metadata': {'orderId': 'order-1'},
        };

        final intent = StripePaymentIntent.fromJson(json);

        expect(intent.id, equals('pi_123'));
        expect(intent.clientSecret, equals('pi_123_secret_abc'));
        expect(intent.amount, equals(5000));
        expect(intent.currency, equals('usd'));
        expect(intent.status, equals('requires_payment_method'));
        expect(intent.metadata?['orderId'], equals('order-1'));
      });

      test('toJson produces correct map', () {
        final intent = StripePaymentIntent(
          id: 'pi_456',
          clientSecret: 'pi_456_secret_xyz',
          amount: 10000,
          currency: 'eur',
          status: 'succeeded',
        );

        final json = intent.toJson();

        expect(json['id'], equals('pi_456'));
        expect(json['client_secret'], equals('pi_456_secret_xyz'));
        expect(json['amount'], equals(10000));
        expect(json['currency'], equals('eur'));
        expect(json['status'], equals('succeeded'));
      });

      test('fromJson handles null metadata', () {
        final json = {
          'id': 'pi_789',
          'client_secret': 'pi_789_secret',
          'amount': 2000,
          'currency': 'gbp',
          'status': 'canceled',
          'metadata': null,
        };

        final intent = StripePaymentIntent.fromJson(json);
        expect(intent.metadata, isNull);
      });
    });

    group('StripeException', () {
      test('toString includes message and status code', () {
        final exception = StripeException(
          message: 'Payment failed',
          statusCode: 402,
          responseBody: '{"error":"card_declined"}',
        );

        final str = exception.toString();
        expect(str, contains('Payment failed'));
        expect(str, contains('402'));
        expect(str, contains('card_declined'));
      });
    });
  });
}
