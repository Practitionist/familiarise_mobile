import 'dart:io';

import 'package:backend/services/auth/auth_service.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../../../../routes/api/auth/email/sign-up.dart' as route;

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

  group('POST /api/auth/email/sign-up', () {
    setUp(() {
      when(() => request.method).thenReturn(HttpMethod.post);
      when(() => request.headers).thenReturn({});
    });

    test('returns 201 with user and token on successful sign-up', () async {
      final successResult = {
        'user': {
          'id': 'new-user-123',
          'email': 'newuser@example.com',
          'name': 'New User',
        },
        'token': 'jwt-token-xyz',
        'session': {
          'id': 'session-456',
          'userId': 'new-user-123',
          'expiresAt': '2025-12-31T00:00:00Z',
        },
      };

      when(() => request.json()).thenAnswer(
        (_) async => {
          'email': 'newuser@example.com',
          'password': 'strongpassword',
          'name': 'New User',
        },
      );
      when(
        () => authService.signUpWithEmail(
          'newuser@example.com',
          'strongpassword',
          name: 'New User',
          ipAddress: any(named: 'ipAddress'),
          userAgent: any(named: 'userAgent'),
        ),
      ).thenAnswer((_) async => successResult);

      final response = await route.onRequest(context);

      expect(response.statusCode, equals(HttpStatus.created));
      final body = await response.json();
      expect(body['user']['email'], equals('newuser@example.com'));
      expect(body['token'], equals('jwt-token-xyz'));
    });

    test('returns 201 when name is omitted (optional)', () async {
      final successResult = {
        'user': {
          'id': 'new-user-123',
          'email': 'noname@example.com',
          'name': null,
        },
        'token': 'jwt-token-xyz',
        'session': {
          'id': 'session-456',
          'userId': 'new-user-123',
          'expiresAt': '2025-12-31T00:00:00Z',
        },
      };

      when(() => request.json()).thenAnswer(
        (_) async => {
          'email': 'noname@example.com',
          'password': 'strongpassword',
        },
      );
      when(
        () => authService.signUpWithEmail(
          'noname@example.com',
          'strongpassword',
          name: null,
          ipAddress: any(named: 'ipAddress'),
          userAgent: any(named: 'userAgent'),
        ),
      ).thenAnswer((_) async => successResult);

      final response = await route.onRequest(context);

      expect(response.statusCode, equals(HttpStatus.created));
    });

    test('returns 400 when email is missing', () async {
      when(() => request.json()).thenAnswer(
        (_) async => {
          'password': 'strongpassword',
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
          'email': 'newuser@example.com',
        },
      );

      final response = await route.onRequest(context);

      expect(response.statusCode, equals(HttpStatus.badRequest));
      final body = await response.json();
      expect(body['error']['message'], contains('Email and password'));
    });

    test('returns 400 for invalid email format', () async {
      when(() => request.json()).thenAnswer(
        (_) async => {
          'email': 'not-an-email',
          'password': 'strongpassword',
        },
      );

      final response = await route.onRequest(context);

      expect(response.statusCode, equals(HttpStatus.badRequest));
      final body = await response.json();
      expect(body['error']['message'], contains('Invalid email'));
    });

    test('returns 400 when password is too short (less than 8 chars)',
        () async {
      when(() => request.json()).thenAnswer(
        (_) async => {
          'email': 'newuser@example.com',
          'password': 'short',
        },
      );

      final response = await route.onRequest(context);

      expect(response.statusCode, equals(HttpStatus.badRequest));
      final body = await response.json();
      expect(body['error']['message'], contains('at least 8 characters'));
    });

    test('returns 409 when email already exists', () async {
      when(() => request.json()).thenAnswer(
        (_) async => {
          'email': 'existing@example.com',
          'password': 'strongpassword',
        },
      );
      when(
        () => authService.signUpWithEmail(
          'existing@example.com',
          'strongpassword',
          name: null,
          ipAddress: any(named: 'ipAddress'),
          userAgent: any(named: 'userAgent'),
        ),
      ).thenThrow(AuthException(
        'An account with this email already exists',
        statusCode: 409,
      ));

      final response = await route.onRequest(context);

      expect(response.statusCode, equals(HttpStatus.conflict));
      final body = await response.json();
      expect(body['error']['message'], contains('already exists'));
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
          'email': 'newuser@example.com',
          'password': 'strongpassword',
        },
      );
      when(
        () => authService.signUpWithEmail(
          'newuser@example.com',
          'strongpassword',
          name: null,
          ipAddress: any(named: 'ipAddress'),
          userAgent: any(named: 'userAgent'),
        ),
      ).thenThrow(Exception('Database connection error'));

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
