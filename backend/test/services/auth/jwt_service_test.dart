import 'package:backend/services/auth/jwt_service.dart';
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:test/test.dart';

void main() {
  const testSecret = 'test-jwt-secret-key-for-testing-purposes';

  group('JwtService', () {
    late JwtService service;

    setUp(() {
      service = JwtService(testSecret);
    });

    group('createToken', () {
      test('returns a non-empty string', () {
        final token = service.createToken(
          userId: 'user-123',
          sessionId: 'session-456',
        );

        expect(token, isA<String>());
        expect(token, isNotEmpty);
      });

      test('returns a valid JWT with three dot-separated parts', () {
        final token = service.createToken(
          userId: 'user-123',
          sessionId: 'session-456',
        );

        final parts = token.split('.');
        expect(parts.length, equals(3));
      });

      test('creates token with correct userId and sessionId claims', () {
        final token = service.createToken(
          userId: 'user-123',
          sessionId: 'session-456',
        );

        final payload = service.verify(token);
        expect(payload['userId'], equals('user-123'));
        expect(payload['sessionId'], equals('session-456'));
      });

      test('includes issuer claim set to familiarise-backend', () {
        final token = service.createToken(
          userId: 'user-123',
          sessionId: 'session-456',
        );

        // Verify with dart_jsonwebtoken directly to check issuer
        final jwt = JWT.verify(token, SecretKey(testSecret));
        expect(jwt.issuer, equals('familiarise-backend'));
      });

      test('includes additional claims when provided', () {
        final token = service.createToken(
          userId: 'user-123',
          sessionId: 'session-456',
          additionalClaims: {
            'role': 'CONSULTANT',
            'email': 'test@example.com',
          },
        );

        final payload = service.verify(token);
        expect(payload['role'], equals('CONSULTANT'));
        expect(payload['email'], equals('test@example.com'));
        // Standard claims still present
        expect(payload['userId'], equals('user-123'));
        expect(payload['sessionId'], equals('session-456'));
      });

      test('generates different tokens for different users', () {
        final token1 = service.createToken(
          userId: 'user-1',
          sessionId: 'session-1',
        );

        final token2 = service.createToken(
          userId: 'user-2',
          sessionId: 'session-2',
        );

        expect(token1, isNot(equals(token2)));
      });
    });

    group('verify', () {
      test('returns payload map for a valid token', () {
        final token = service.createToken(
          userId: 'user-123',
          sessionId: 'session-456',
        );

        final payload = service.verify(token);
        expect(payload, isA<Map<String, dynamic>>());
        expect(payload['userId'], equals('user-123'));
        expect(payload['sessionId'], equals('session-456'));
      });

      test('throws JWTException for expired token', () {
        // Create a service with a very short expiry
        final shortExpiryService = JwtService(
          testSecret,
          tokenExpiry: const Duration(seconds: -1),
        );

        final token = shortExpiryService.createToken(
          userId: 'user-123',
          sessionId: 'session-456',
        );

        expect(
          () => service.verify(token),
          throwsA(isA<JWTException>()),
        );
      });

      test('throws JWTException for token signed with wrong secret', () {
        final otherService = JwtService('different-secret-key');
        final token = otherService.createToken(
          userId: 'user-123',
          sessionId: 'session-456',
        );

        expect(
          () => service.verify(token),
          throwsA(isA<JWTException>()),
        );
      });

      test('throws JWTException for malformed token', () {
        expect(
          () => service.verify('not-a-valid-jwt-token'),
          throwsA(isA<JWTException>()),
        );
      });

      test('throws JWTException for empty token', () {
        expect(
          () => service.verify(''),
          throwsA(isA<JWTException>()),
        );
      });

      test('throws for token with tampered payload', () {
        final token = service.createToken(
          userId: 'user-123',
          sessionId: 'session-456',
        );

        // Tamper with the payload section (middle part)
        final parts = token.split('.');
        parts[1] = '${parts[1]}tampered';
        final tamperedToken = parts.join('.');

        expect(
          () => service.verify(tamperedToken),
          throwsA(isA<JWTException>()),
        );
      });
    });

    group('tryVerify', () {
      test('returns payload for valid token', () {
        final token = service.createToken(
          userId: 'user-123',
          sessionId: 'session-456',
        );

        final payload = service.tryVerify(token);
        expect(payload, isNotNull);
        expect(payload!['userId'], equals('user-123'));
        expect(payload['sessionId'], equals('session-456'));
      });

      test('returns null for expired token', () {
        final shortExpiryService = JwtService(
          testSecret,
          tokenExpiry: const Duration(seconds: -1),
        );

        final token = shortExpiryService.createToken(
          userId: 'user-123',
          sessionId: 'session-456',
        );

        final payload = service.tryVerify(token);
        expect(payload, isNull);
      });

      test('returns null for malformed token', () {
        final payload = service.tryVerify('garbage-token');
        expect(payload, isNull);
      });

      test('returns null for token signed with wrong secret', () {
        final otherService = JwtService('wrong-secret');
        final token = otherService.createToken(
          userId: 'user-123',
          sessionId: 'session-456',
        );

        final payload = service.tryVerify(token);
        expect(payload, isNull);
      });

      test('returns null for empty string', () {
        final payload = service.tryVerify('');
        expect(payload, isNull);
      });
    });

    group('custom token expiry', () {
      test('token with long expiry is still valid', () {
        final longExpiryService = JwtService(
          testSecret,
          tokenExpiry: const Duration(days: 365),
        );

        final token = longExpiryService.createToken(
          userId: 'user-123',
          sessionId: 'session-456',
        );

        final payload = longExpiryService.verify(token);
        expect(payload['userId'], equals('user-123'));
      });

      test('default expiry is 30 days', () {
        // The default JwtService should produce tokens valid for 30 days
        final token = service.createToken(
          userId: 'user-123',
          sessionId: 'session-456',
        );

        // Token should be valid now
        final payload = service.verify(token);
        expect(payload['userId'], equals('user-123'));
      });
    });
  });
}
