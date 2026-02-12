import 'package:backend/database/database_client.dart';
import 'package:backend/database/repositories/account_repository.dart';
import 'package:backend/database/repositories/session_repository.dart';
import 'package:backend/database/repositories/user_repository.dart';
import 'package:backend/database/repositories/verification_repository.dart';
import 'package:backend/services/auth/auth_service.dart';
import 'package:backend/services/email/email_service.dart';
import 'package:backend/services/profile/profile_service.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class MockDatabaseClient extends Mock implements DatabaseClient {}

class MockEmailService extends Mock implements EmailService {}

class MockVerificationRepository extends Mock
    implements VerificationRepository {}

class MockUserRepository extends Mock implements UserRepository {}

class MockAccountRepository extends Mock implements AccountRepository {}

class MockSessionRepository extends Mock implements SessionRepository {}

void main() {
  late MockDatabaseClient mockDb;
  late MockEmailService mockEmailService;
  late MockVerificationRepository mockVerifications;
  late MockUserRepository mockUsers;
  late MockAccountRepository mockAccounts;
  late MockSessionRepository mockSessions;
  late ProfileService service;

  setUp(() {
    mockDb = MockDatabaseClient();
    mockEmailService = MockEmailService();
    mockVerifications = MockVerificationRepository();
    mockUsers = MockUserRepository();
    mockAccounts = MockAccountRepository();
    mockSessions = MockSessionRepository();

    when(() => mockDb.verifications).thenReturn(mockVerifications);
    when(() => mockDb.users).thenReturn(mockUsers);
    when(() => mockDb.accounts).thenReturn(mockAccounts);
    when(() => mockDb.sessions).thenReturn(mockSessions);

    service = ProfileService(
      mockDb,
      emailService: mockEmailService,
      appBaseUrl: 'https://example.com',
    );
  });

  group('resetPassword', () {
    test('uses repository method to find verification', () async {
      final verification = {
        'id': 'v1',
        'identifier': 'password-reset:test@example.com',
        'value': 'token123',
        'expiresAt': DateTime.now()
            .toUtc()
            .add(const Duration(minutes: 10))
            .toIso8601String(),
      };

      when(() => mockVerifications.findByValueAndIdentifierPrefix(
            value: any(named: 'value'),
            identifierPrefix: any(named: 'identifierPrefix'),
          ),).thenAnswer((_) async => verification);

      when(() => mockUsers.findByEmail(any()))
          .thenAnswer((_) async => {'id': 'u1', 'email': 'test@example.com'});

      when(() => mockAccounts.findCredentialAccount(any()))
          .thenAnswer((_) async => {'id': 'a1', 'password': 'oldhash'});

      when(() => mockAccounts.updatePassword(
            accountId: any(named: 'accountId'),
            hashedPassword: any(named: 'hashedPassword'),
          ),).thenAnswer((_) async => {});

      when(() => mockVerifications.delete(any())).thenAnswer((_) async {});

      await service.resetPassword(
        token: 'token123',
        newPassword: 'newPassword123',
      );

      verify(() => mockVerifications.findByValueAndIdentifierPrefix(
            value: 'token123',
            identifierPrefix: 'password-reset:',
          ),).called(1);
    });

    test('throws AuthException when verification is null', () async {
      when(() => mockVerifications.findByValueAndIdentifierPrefix(
            value: any(named: 'value'),
            identifierPrefix: any(named: 'identifierPrefix'),
          ),).thenAnswer((_) async => null);

      expect(
        () => service.resetPassword(
          token: 'bad-token',
          newPassword: 'newPassword123',
        ),
        throwsA(isA<AuthException>()),
      );
    });

    test('throws AuthException when token is expired', () async {
      final verification = {
        'id': 'v1',
        'identifier': 'password-reset:test@example.com',
        'value': 'token123',
        'expiresAt': DateTime.now()
            .toUtc()
            .subtract(const Duration(hours: 1))
            .toIso8601String(),
      };

      when(() => mockVerifications.findByValueAndIdentifierPrefix(
            value: any(named: 'value'),
            identifierPrefix: any(named: 'identifierPrefix'),
          ),).thenAnswer((_) async => verification);

      when(() => mockVerifications.delete(any())).thenAnswer((_) async {});

      expect(
        () => service.resetPassword(
          token: 'token123',
          newPassword: 'newPassword123',
        ),
        throwsA(isA<AuthException>()),
      );
    });
  });

  group('confirmEmailVerification', () {
    test('uses repository method to find verification', () async {
      final verification = {
        'id': 'v2',
        'identifier': 'email-verify:test@example.com',
        'value': 'verify-token',
        'expiresAt': DateTime.now()
            .toUtc()
            .add(const Duration(hours: 12))
            .toIso8601String(),
      };

      when(() => mockVerifications.findByValueAndIdentifierPrefix(
            value: any(named: 'value'),
            identifierPrefix: any(named: 'identifierPrefix'),
          ),).thenAnswer((_) async => verification);

      when(() => mockUsers.findByEmail(any()))
          .thenAnswer((_) async => {'id': 'u1', 'email': 'test@example.com'});

      when(() => mockUsers.updateEmailVerified(
            id: any(named: 'id'),
            verified: any(named: 'verified'),
          ),).thenAnswer((_) async => {});

      when(() => mockVerifications.delete(any())).thenAnswer((_) async {});

      await service.confirmEmailVerification(token: 'verify-token');

      verify(() => mockVerifications.findByValueAndIdentifierPrefix(
            value: 'verify-token',
            identifierPrefix: 'email-verify:',
          ),).called(1);
    });

    test('throws AuthException when verification is null', () async {
      when(() => mockVerifications.findByValueAndIdentifierPrefix(
            value: any(named: 'value'),
            identifierPrefix: any(named: 'identifierPrefix'),
          ),).thenAnswer((_) async => null);

      expect(
        () => service.confirmEmailVerification(token: 'bad-token'),
        throwsA(isA<AuthException>()),
      );
    });
  });
}
