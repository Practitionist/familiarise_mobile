// Mock stubbing spans several generated delegate classes that share no base
// type, so the shared stub helpers take `dynamic` — which costs type
// inference on the mocktail calls. Test-only plumbing, not a correctness gap.
// ignore_for_file: inference_failure_on_function_invocation, strict_raw_type

import 'package:backend/services/stream_service.dart';
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:test/test.dart';

void main() {
  group('StreamService', () {
    const testApiKey = 'test-stream-api-key';
    const testApiSecret = 'test-stream-api-secret-key';

    group('isConfigured', () {
      test('returns true when both key and secret are provided', () {
        final service = StreamService(
          apiKey: testApiKey,
          apiSecret: testApiSecret,
        );

        expect(service.isConfigured, isTrue);
      });

      test('returns false when api key is empty', () {
        final service = StreamService(
          apiKey: '',
          apiSecret: testApiSecret,
        );

        expect(service.isConfigured, isFalse);
      });

      test('returns false when api secret is empty', () {
        final service = StreamService(
          apiKey: testApiKey,
          apiSecret: '',
        );

        expect(service.isConfigured, isFalse);
      });

      test('returns false when both are empty', () {
        final service = StreamService(
          apiKey: '',
          apiSecret: '',
        );

        expect(service.isConfigured, isFalse);
      });
    });

    group('apiKey getter', () {
      test('returns the configured API key', () {
        final service = StreamService(
          apiKey: testApiKey,
          apiSecret: testApiSecret,
        );

        expect(service.apiKey, equals(testApiKey));
      });
    });

    group('generateUserToken', () {
      late StreamService service;

      setUp(() {
        service = StreamService(
          apiKey: testApiKey,
          apiSecret: testApiSecret,
        );
      });

      test('returns a non-empty JWT string', () {
        final token = service.generateUserToken('user-123');

        expect(token, isA<String>());
        expect(token, isNotEmpty);
        expect(token.split('.').length, equals(3));
      });

      test('contains correct user_id claim', () {
        final token = service.generateUserToken('user-abc');

        final jwt = JWT.verify(token, SecretKey(testApiSecret));
        final payload = jwt.payload as Map<String, dynamic>;

        expect(payload['user_id'], equals('user-abc'));
      });

      test('contains issuer set to api key', () {
        final token = service.generateUserToken('user-123');

        final jwt = JWT.verify(token, SecretKey(testApiSecret));
        final payload = jwt.payload as Map<String, dynamic>;

        expect(payload['iss'], equals(testApiKey));
      });

      test('contains iat and exp claims', () {
        final token = service.generateUserToken('user-123');

        final jwt = JWT.verify(token, SecretKey(testApiSecret));
        final payload = jwt.payload as Map<String, dynamic>;

        expect(payload['iat'], isA<int>());
        expect(payload['exp'], isA<int>());
        expect(payload['exp'] as int, greaterThan(payload['iat'] as int));
      });

      test('uses custom expiry duration', () {
        final now = DateTime.now().toUtc();
        final token = service.generateUserToken(
          'user-123',
          expiresIn: const Duration(hours: 2),
        );

        final jwt = JWT.verify(token, SecretKey(testApiSecret));
        final payload = jwt.payload as Map<String, dynamic>;

        final exp = payload['exp'] as int;
        final expTime = DateTime.fromMillisecondsSinceEpoch(exp * 1000);

        // exp should be approximately 2 hours from now (with some tolerance)
        final expectedExp = now.add(const Duration(hours: 2));
        final diff = expTime.difference(expectedExp).inSeconds.abs();
        expect(diff, lessThan(5)); // Allow 5 seconds tolerance
      });

      test('throws StateError when service is not configured', () {
        final unconfiguredService = StreamService(
          apiKey: '',
          apiSecret: '',
        );

        expect(
          () => unconfiguredService.generateUserToken('user-123'),
          throwsA(isA<StateError>()),
        );
      });

      test('generates different tokens for different users', () {
        final token1 = service.generateUserToken('user-1');
        final token2 = service.generateUserToken('user-2');

        expect(token1, isNot(equals(token2)));
      });
    });

    group('generateCallToken', () {
      late StreamService service;

      setUp(() {
        service = StreamService(
          apiKey: testApiKey,
          apiSecret: testApiSecret,
        );
      });

      test('returns a valid JWT', () {
        final token = service.generateCallToken('user-123', 'call-456');

        expect(token, isA<String>());
        expect(token.split('.').length, equals(3));
      });

      test('contains call_cids claim', () {
        final token = service.generateCallToken('user-123', 'call-456');

        final jwt = JWT.verify(token, SecretKey(testApiSecret));
        final payload = jwt.payload as Map<String, dynamic>;

        expect(payload['call_cids'], isA<List>());
        expect(payload['call_cids'], contains('default:call-456'));
      });

      test('contains user_id claim', () {
        final token = service.generateCallToken('user-abc', 'call-def');

        final jwt = JWT.verify(token, SecretKey(testApiSecret));
        final payload = jwt.payload as Map<String, dynamic>;

        expect(payload['user_id'], equals('user-abc'));
      });

      test('includes permissions when provided', () {
        final token = service.generateCallToken(
          'user-123',
          'call-456',
          permissions: ['send-audio', 'send-video'],
        );

        final jwt = JWT.verify(token, SecretKey(testApiSecret));
        final payload = jwt.payload as Map<String, dynamic>;

        expect(payload['call_permissions'], isA<List>());
        expect(
          payload['call_permissions'],
          containsAll(['send-audio', 'send-video']),
        );
      });

      test('does not include permissions when null', () {
        final token = service.generateCallToken('user-123', 'call-456');

        final jwt = JWT.verify(token, SecretKey(testApiSecret));
        final payload = jwt.payload as Map<String, dynamic>;

        expect(payload.containsKey('call_permissions'), isFalse);
      });

      test('throws StateError when service is not configured', () {
        final unconfiguredService = StreamService(
          apiKey: '',
          apiSecret: '',
        );

        expect(
          () => unconfiguredService.generateCallToken('user-123', 'call-456'),
          throwsA(isA<StateError>()),
        );
      });

      test('uses custom expiry duration', () {
        final now = DateTime.now().toUtc();
        final token = service.generateCallToken(
          'user-123',
          'call-456',
          expiresIn: const Duration(minutes: 30),
        );

        final jwt = JWT.verify(token, SecretKey(testApiSecret));
        final payload = jwt.payload as Map<String, dynamic>;

        final exp = payload['exp'] as int;
        final expTime = DateTime.fromMillisecondsSinceEpoch(exp * 1000);

        final expectedExp = now.add(const Duration(minutes: 30));
        final diff = expTime.difference(expectedExp).inSeconds.abs();
        expect(diff, lessThan(5)); // Allow 5 seconds tolerance
      });
    });

    group('StreamTokenResponse', () {
      test('toJson produces correct map', () {
        final response = StreamTokenResponse(
          token: 'test-token',
          apiKey: 'test-key',
          callId: 'call-123',
          userId: 'user-456',
        );

        final json = response.toJson();

        expect(json['token'], equals('test-token'));
        expect(json['apiKey'], equals('test-key'));
        expect(json['callId'], equals('call-123'));
        expect(json['userId'], equals('user-456'));
      });
    });
  });
}
