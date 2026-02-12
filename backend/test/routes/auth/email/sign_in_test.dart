import 'dart:io';

import 'package:backend/services/auth/auth_service.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../../../../routes/api/auth/email/sign-in.dart' as route;

class _MockRequestContext extends Mock implements RequestContext {}

class _MockRequest extends Mock implements Request {}

class _MockAuthService extends Mock implements AuthService {}

void main() {
  late _MockRequestContext context;
  late _MockRequest request;
  late _MockAuthService authService;

  setUp(() {
    context = _MockRequestContext();
    request = _MockRequest();
    authService = _MockAuthService();

    when(() => context.request).thenReturn(request);
    when(() => context.read<AuthService>()).thenReturn(authService);
  });

  group('POST /api/auth/email/sign-in', () {
    setUp(() {
      when(() => request.method).thenReturn(HttpMethod.post);
      when(() => request.headers).thenReturn({});
    });

    test('returns 200 with user and token on successful sign-in', () async {
      final successResult = {
        'user': {
          'id': 'user-123',
          'email': 'test@example.com',
          'name': 'Test User',
        },
        'token': 'jwt-token-abc',
        'session': {
          'id': 'session-123',
          'userId': 'user-123',
          'expiresAt': '2025-12-31T00:00:00Z',
        },
      };

      when(() => request.json()).thenAnswer(
        (_) async => {
          'email': 'test@example.com',
          'password': 'password123',
        },
      );
      when(
        () => authService.signInWithEmail(
          'test@example.com',
          'password123',
          ipAddress: any(named: 'ipAddress'),
          userAgent: any(named: 'userAgent'),
        ),
      ).thenAnswer((_) async => successResult);

      final response = await route.onRequest(context);

      expect(response.statusCode, equals(HttpStatus.ok));
      final body = await response.json();
      expect(body['user']['email'], equals('test@example.com'));
      expect(body['token'], equals('jwt-token-abc'));
    });

    test('returns 400 when email is missing', () async {
      when(() => request.json()).thenAnswer(
        (_) async => {
          'password': 'password123',
        },
      );

      final response = await route.onRequest(context);

      expect(response.statusCode, equals(HttpStatus.badRequest));
      final body = await response.json();
      expect(body['error']['message'], contains('Email and password'));
    });

    test('returns 400 when password is missing', () async {
      when(() => request.json()).thenAnswer(
        (_) async => {
          'email': 'test@example.com',
        },
      );

      final response = await route.onRequest(context);

      expect(response.statusCode, equals(HttpStatus.badRequest));
      final body = await response.json();
      expect(body['error']['message'], contains('Email and password'));
    });

    test('returns 400 when both email and password are missing', () async {
      when(() => request.json()).thenAnswer(
        (_) async => <String, dynamic>{},
      );

      final response = await route.onRequest(context);

      expect(response.statusCode, equals(HttpStatus.badRequest));
    });

    test('returns 401 when AuthException is thrown for wrong password',
        () async {
      when(() => request.json()).thenAnswer(
        (_) async => {
          'email': 'test@example.com',
          'password': 'wrong-password',
        },
      );
      when(
        () => authService.signInWithEmail(
          'test@example.com',
          'wrong-password',
          ipAddress: any(named: 'ipAddress'),
          userAgent: any(named: 'userAgent'),
        ),
      ).thenThrow(AuthException('Invalid email or password'));

      final response = await route.onRequest(context);

      expect(response.statusCode, equals(HttpStatus.unauthorized));
      final body = await response.json();
      expect(body['error']['message'], equals('Invalid email or password'));
    });

    test('returns 400 when request body is not valid JSON', () async {
      when(() => request.json()).thenThrow(const FormatException());

      final response = await route.onRequest(context);

      expect(response.statusCode, equals(HttpStatus.badRequest));
      final body = await response.json();
      expect(body['error']['message'], contains('Invalid request body'));
    });

    test('returns 500 on unexpected error', () async {
      when(() => request.json()).thenAnswer(
        (_) async => {
          'email': 'test@example.com',
          'password': 'password123',
        },
      );
      when(
        () => authService.signInWithEmail(
          'test@example.com',
          'password123',
          ipAddress: any(named: 'ipAddress'),
          userAgent: any(named: 'userAgent'),
        ),
      ).thenThrow(Exception('Database connection lost'));

      final response = await route.onRequest(context);

      expect(response.statusCode, equals(HttpStatus.internalServerError));
      final body = await response.json();
      expect(body['error']['message'], contains('unexpected error'));
    });
  });

  group('Non-POST methods', () {
    test('GET returns 405 Method Not Allowed', () async {
      when(() => request.method).thenReturn(HttpMethod.get);

      final response = await route.onRequest(context);

      expect(response.statusCode, equals(HttpStatus.methodNotAllowed));
    });

    test('PUT returns 405 Method Not Allowed', () async {
      when(() => request.method).thenReturn(HttpMethod.put);

      final response = await route.onRequest(context);

      expect(response.statusCode, equals(HttpStatus.methodNotAllowed));
    });

    test('DELETE returns 405 Method Not Allowed', () async {
      when(() => request.method).thenReturn(HttpMethod.delete);

      final response = await route.onRequest(context);

      expect(response.statusCode, equals(HttpStatus.methodNotAllowed));
    });
  });
}
