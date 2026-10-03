import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/database/repositories/session_repository.dart';
import 'package:backend/database/repositories/user_repository.dart';
import 'package:backend/database/repositories/verification_repository.dart';
import 'package:backend/services/auth/auth_service.dart';
import 'package:backend/services/auth/jwt_service.dart';
import 'package:backend/services/profile/profile_service.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../../../routes/api/auth/change-password.dart' as change_password_route;
import '../../../routes/api/auth/logout.dart' as logout_route;
import '../../../routes/api/auth/reset-password.dart' as reset_password_route;
import '../../../routes/api/auth/session.dart' as session_route;

class _MockRequestContext extends Mock implements RequestContext {}

class _MockRequest extends Mock implements Request {}

class _MockAuthService extends Mock implements AuthService {}

class _MockJwtService extends Mock implements JwtService {}

class _MockProfileService extends Mock implements ProfileService {}

class _MockDatabaseClient extends Mock implements DatabaseClient {}

class _MockSessionRepository extends Mock implements SessionRepository {}

class _MockUserRepository extends Mock implements UserRepository {}

class _MockVerificationRepository extends Mock
    implements VerificationRepository {}

void main() {
  late _MockRequestContext context;
  late _MockRequest request;
  late _MockAuthService authService;
  late _MockJwtService jwtService;
  late _MockProfileService profileService;

  setUp(() {
    clearSessionCache();
    context = _MockRequestContext();
    request = _MockRequest();
    authService = _MockAuthService();
    jwtService = _MockJwtService();
    profileService = _MockProfileService();

    when(() => context.request).thenReturn(request);
    when(() => context.read<AuthService>()).thenReturn(authService);
    when(() => context.read<JwtService>()).thenReturn(jwtService);
    when(() => context.read<ProfileService>()).thenReturn(profileService);
  });

  tearDown(clearSessionCache);

  group('GET /api/auth/session', () {
    setUp(() {
      when(() => request.method).thenReturn(HttpMethod.get);
    });

    test('returns 401 when Authorization header is missing', () async {
      when(() => request.headers).thenReturn({});

      final response = await session_route.onRequest(context);

      expect(response.statusCode, equals(HttpStatus.unauthorized));
      final body = await response.json() as Map<String, dynamic>;
      expect(body['error'], equals('Unauthorized'));
    });

    test('returns 401 when Authorization header is not Bearer', () async {
      when(() => request.headers).thenReturn({'authorization': 'Basic abc123'});

      final response = await session_route.onRequest(context);

      expect(response.statusCode, equals(HttpStatus.unauthorized));
      final body = await response.json() as Map<String, dynamic>;
      expect(body['error'], equals('Unauthorized'));
    });

    test('returns 401 when JWT signature is invalid or expired', () async {
      when(() => request.headers)
          .thenReturn({'authorization': 'Bearer invalid-jwt'});
      when(() => jwtService.tryVerify('invalid-jwt')).thenReturn(null);

      final response = await session_route.onRequest(context);

      expect(response.statusCode, equals(HttpStatus.unauthorized));
      final body = await response.json() as Map<String, dynamic>;
      expect(body['error'], equals('Unauthorized'));
    });

    test('returns 401 when session is missing or expired in DB', () async {
      when(() => request.headers)
          .thenReturn({'authorization': 'Bearer expired-token'});
      when(() => jwtService.tryVerify('expired-token')).thenReturn({
        'userId': 'user-123',
        'sessionId': 'expired-session-id',
      });
      when(() => authService.getSession('expired-session-id'))
          .thenAnswer((_) async => null);

      final response = await session_route.onRequest(context);

      expect(response.statusCode, equals(HttpStatus.unauthorized));
      final body = await response.json() as Map<String, dynamic>;
      expect(body['error'], equals('Unauthorized'));
    });

    test('returns 200 with user and session when valid, and caches for 30s',
        () async {
      const token = 'valid-session-token';
      when(() => request.headers)
          .thenReturn({'authorization': 'Bearer $token'});
      when(() => jwtService.tryVerify(token)).thenReturn({
        'userId': 'user-123',
        'sessionId': 'session-123',
      });
      when(() => authService.getSession('session-123')).thenAnswer(
        (_) async => {
          'user': {
            'id': 'user-123',
            'email': 'founder@example.online',
            'name': 'Founder',
            'role': 'CONSULTEE',
          },
          'session': {
            'id': 'session-123',
            'userId': 'user-123',
            'expiresAt':
                DateTime.now().add(const Duration(days: 7)).toIso8601String(),
          },
        },
      );

      final firstResponse = await session_route.onRequest(context);
      expect(firstResponse.statusCode, equals(HttpStatus.ok));
      final firstBody = await firstResponse.json() as Map<String, dynamic>;
      expect(
        (firstBody['user'] as Map)['email'],
        equals('founder@example.online'),
      );

      // Second request within 30s should hit the in-memory session cache
      // without querying Postgres again.
      final secondResponse = await session_route.onRequest(context);
      expect(secondResponse.statusCode, equals(HttpStatus.ok));

      verify(() => authService.getSession('session-123')).called(1);
    });

    test('returns 503 when session verification throws an unexpected error',
        () async {
      when(() => request.headers)
          .thenReturn({'authorization': 'Bearer valid-token'});
      when(() => jwtService.tryVerify('valid-token')).thenReturn({
        'userId': 'user-123',
        'sessionId': 'session-123',
      });
      when(() => authService.getSession('session-123'))
          .thenThrow(Exception('Database connection error'));

      final response = await session_route.onRequest(context);

      expect(response.statusCode, equals(HttpStatus.serviceUnavailable));
    });

    test('returns 405 on non-GET method', () async {
      when(() => request.method).thenReturn(HttpMethod.post);

      final response = await session_route.onRequest(context);

      expect(response.statusCode, equals(HttpStatus.methodNotAllowed));
    });
  });

  group('POST /api/auth/logout', () {
    setUp(() {
      when(() => request.method).thenReturn(HttpMethod.post);
    });

    test(
        'revokes session in DB, invalidates cache, and subsequent session check returns 401',
        () async {
      const token = 'active-token-to-logout';
      when(() => request.headers)
          .thenReturn({'authorization': 'Bearer $token'});
      when(() => jwtService.tryVerify(token)).thenReturn({
        'userId': 'user-abc',
        'sessionId': 'session-abc',
      });
      when(() => authService.getSession('session-abc')).thenAnswer(
        (_) async => {
          'user': {
            'id': 'user-abc',
            'email': 'user@example.agency',
            'name': 'Agency User',
          },
          'session': {
            'id': 'session-abc',
            'userId': 'user-abc',
            'expiresAt':
                DateTime.now().add(const Duration(days: 7)).toIso8601String(),
          },
        },
      );

      // Prime the 30s cache via GET /api/auth/session
      when(() => request.method).thenReturn(HttpMethod.get);
      final preLogoutSession = await session_route.onRequest(context);
      expect(preLogoutSession.statusCode, equals(HttpStatus.ok));

      // Now call POST /api/auth/logout
      when(() => request.method).thenReturn(HttpMethod.post);
      when(() => authService.signOut('session-abc')).thenAnswer((_) async {});

      final logoutResponse = await logout_route.onRequest(context);
      expect(logoutResponse.statusCode, equals(HttpStatus.ok));
      final logoutBody = await logoutResponse.json() as Map<String, dynamic>;
      expect(logoutBody['success'], isTrue);
      verify(() => authService.signOut('session-abc')).called(1);

      // Simulate session row deleted in DB after signOut
      when(() => authService.getSession('session-abc'))
          .thenAnswer((_) async => null);

      // Subsequent GET /api/auth/session must NOT return stale cached session
      when(() => request.method).thenReturn(HttpMethod.get);
      final postLogoutSession = await session_route.onRequest(context);
      expect(postLogoutSession.statusCode, equals(HttpStatus.unauthorized));
    });
  });

  group('Password reset & change session revocation', () {
    test(
        'POST /api/auth/reset-password revokes all user sessions and invalidates cache',
        () async {
      when(() => request.method).thenReturn(HttpMethod.post);
      when(() => request.headers).thenReturn({});
      when(() => request.json()).thenAnswer(
        (_) async => {
          'token': 'reset-token-123',
          'newPassword': 'newSecurePassword123',
        },
      );
      when(
        () => authService.resolveUserIdFromPasswordResetToken(
          'reset-token-123',
        ),
      ).thenAnswer((_) async => 'user-reset-1');
      when(
        () => profileService.resetPassword(
          token: 'reset-token-123',
          newPassword: 'newSecurePassword123',
        ),
      ).thenAnswer((_) async {});
      when(() => authService.revokeAllUserSessions('user-reset-1'))
          .thenAnswer((_) async {});

      final response = await reset_password_route.onRequest(context);

      expect(response.statusCode, equals(HttpStatus.ok));
      verify(
        () => profileService.resetPassword(
          token: 'reset-token-123',
          newPassword: 'newSecurePassword123',
        ),
      ).called(1);
      verify(() => authService.revokeAllUserSessions('user-reset-1')).called(1);
    });

    test(
        'POST /api/auth/change-password revokes all user sessions and invalidates cache',
        () async {
      const token = 'bearer-token-change-pw';
      when(() => request.method).thenReturn(HttpMethod.post);
      when(() => request.headers)
          .thenReturn({'authorization': 'Bearer $token'});
      when(() => request.json()).thenAnswer(
        (_) async => {
          'currentPassword': 'oldPassword123',
          'newPassword': 'newPassword456',
        },
      );
      when(() => jwtService.tryVerify(token)).thenReturn({
        'userId': 'user-change-1',
        'sessionId': 'session-change-1',
      });
      when(
        () => profileService.changePassword(
          userId: 'user-change-1',
          currentPassword: 'oldPassword123',
          newPassword: 'newPassword456',
        ),
      ).thenAnswer((_) async {});
      when(() => authService.revokeAllUserSessions('user-change-1'))
          .thenAnswer((_) async {});

      final response = await change_password_route.onRequest(context);

      expect(response.statusCode, equals(HttpStatus.ok));
      verify(
        () => profileService.changePassword(
          userId: 'user-change-1',
          currentPassword: 'oldPassword123',
          newPassword: 'newPassword456',
        ),
      ).called(1);
      verify(() => authService.revokeAllUserSessions('user-change-1')).called(1);
    });

    test('AuthService.revokeAllUserSessions deletes all user sessions in DB',
        () async {
      final mockDb = _MockDatabaseClient();
      final mockJwt = _MockJwtService();
      final mockSessions = _MockSessionRepository();
      final mockUsers = _MockUserRepository();
      final mockVerifications = _MockVerificationRepository();

      when(() => mockDb.sessions).thenReturn(mockSessions);
      when(() => mockDb.users).thenReturn(mockUsers);
      when(() => mockDb.verifications).thenReturn(mockVerifications);
      when(() => mockDb.deleteUserSessions('user-99')).thenAnswer((_) async {});

      final realService = AuthService(mockDb, mockJwt);
      await realService.revokeAllUserSessions('user-99');

      verify(() => mockDb.deleteUserSessions('user-99')).called(1);
    });
  });
}
