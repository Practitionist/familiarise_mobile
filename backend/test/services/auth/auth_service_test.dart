import 'package:backend/database/database_client.dart';
import 'package:backend/database/repositories/account_repository.dart';
import 'package:backend/database/repositories/consultee_profile_repository.dart';
import 'package:backend/database/repositories/session_repository.dart';
import 'package:backend/database/repositories/user_repository.dart';
import 'package:backend/services/auth/auth_service.dart';
import 'package:backend/services/auth/github_oauth_service.dart';
import 'package:backend/services/auth/jwt_service.dart';
import 'package:bcrypt/bcrypt.dart';
import 'package:mocktail/mocktail.dart';
import 'package:prisma_flutter_connector/runtime_server.dart';
import 'package:test/test.dart';

// Mocks
class MockDatabaseClient extends Mock implements DatabaseClient {}

class MockJwtService extends Mock implements JwtService {}

class MockUserRepository extends Mock implements UserRepository {}

class MockAccountRepository extends Mock implements AccountRepository {}

class MockSessionRepository extends Mock implements SessionRepository {}

class MockConsulteeProfileRepository extends Mock
    implements ConsulteeProfileRepository {}

class MockQueryExecutor extends Mock implements QueryExecutor {}

// Fallback values for complex types
class FakeTransactionExecutor extends Fake implements TransactionExecutor {}

void main() {
  late MockDatabaseClient mockDb;
  late MockJwtService mockJwtService;
  late MockUserRepository mockUsers;
  late MockAccountRepository mockAccounts;
  late MockSessionRepository mockSessions;
  late MockConsulteeProfileRepository mockConsulteeProfiles;
  late AuthService service;

  setUpAll(() {
    registerFallbackValue(FakeTransactionExecutor());
    registerFallbackValue(DateTime.now());
  });

  setUp(() {
    mockDb = MockDatabaseClient();
    mockJwtService = MockJwtService();
    mockUsers = MockUserRepository();
    mockAccounts = MockAccountRepository();
    mockSessions = MockSessionRepository();
    mockConsulteeProfiles = MockConsulteeProfileRepository();

    // Wire up repository accessors
    when(() => mockDb.users).thenReturn(mockUsers);
    when(() => mockDb.accounts).thenReturn(mockAccounts);
    when(() => mockDb.sessions).thenReturn(mockSessions);
    when(() => mockDb.consulteeProfiles).thenReturn(mockConsulteeProfiles);

    // Default stub for createDefaultPreferences (called during signup)
    when(() => mockUsers.createDefaultPreferences(
          any(),
          txn: any(named: 'txn'),
        )).thenAnswer((_) async {});

    service = AuthService(mockDb, mockJwtService);
  });

  group('signInWithEmail', () {
    const testEmail = 'test@example.com';
    const testPassword = 'password123';
    const testUserId = 'user-123';

    test('succeeds with valid email and password', () async {
      // Arrange
      final userMap = {
        'id': testUserId,
        'email': testEmail,
        'name': 'Test User',
        'emailVerified': true,
        'onboardingCompleted': true,
        'role': 'CONSULTEE',
        'createdAt': DateTime.now().toIso8601String(),
        'updatedAt': DateTime.now().toIso8601String(),
      };

      final hashedPassword =
          BCrypt.hashpw(testPassword, BCrypt.gensalt(logRounds: 12));

      when(() => mockDb.findUserByEmail(testEmail))
          .thenAnswer((_) async => userMap);

      when(() => mockAccounts.findCredentialAccount(testUserId))
          .thenAnswer((_) async => {
                'id': 'account-1',
                'password': hashedPassword,
              });

      when(() => mockSessions.create(
            id: any(named: 'id'),
            token: any(named: 'token'),
            userId: any(named: 'userId'),
            expiresAt: any(named: 'expiresAt'),
            ipAddress: any(named: 'ipAddress'),
            userAgent: any(named: 'userAgent'),
          )).thenAnswer((_) async => {
            'id': 'session-1',
            'userId': testUserId,
            'expiresAt': DateTime.now().add(const Duration(days: 30)),
          });

      when(() => mockJwtService.createToken(
            userId: any(named: 'userId'),
            sessionId: any(named: 'sessionId'),
          )).thenReturn('mock-jwt-token');

      // Act
      final result = await service.signInWithEmail(testEmail, testPassword);

      // Assert
      expect(result['token'], equals('mock-jwt-token'));
      expect(result['user'], isNotNull);
      expect((result['user'] as Map)['id'], equals(testUserId));
      expect(result['session'], isNotNull);
    });

    test('throws AuthException when user not found', () async {
      // Arrange
      when(() => mockDb.findUserByEmail(testEmail))
          .thenAnswer((_) async => null);

      // Act & Assert
      expect(
        () => service.signInWithEmail(testEmail, testPassword),
        throwsA(isA<AuthException>().having(
          (e) => e.message,
          'message',
          equals('Invalid email or password'),
        )),
      );
    });

    test('throws AuthException when no credential account exists', () async {
      // Arrange
      when(() => mockDb.findUserByEmail(testEmail))
          .thenAnswer((_) async => {'id': testUserId, 'email': testEmail});

      when(() => mockAccounts.findCredentialAccount(testUserId))
          .thenAnswer((_) async => null);

      // Act & Assert
      expect(
        () => service.signInWithEmail(testEmail, testPassword),
        throwsA(isA<AuthException>().having(
          (e) => e.message,
          'message',
          contains('social login'),
        )),
      );
    });

    test('throws AuthException when password field is null', () async {
      // Arrange
      when(() => mockDb.findUserByEmail(testEmail))
          .thenAnswer((_) async => {'id': testUserId, 'email': testEmail});

      when(() => mockAccounts.findCredentialAccount(testUserId))
          .thenAnswer((_) async => {
                'id': 'account-1',
                'password': null,
              });

      // Act & Assert
      expect(
        () => service.signInWithEmail(testEmail, testPassword),
        throwsA(isA<AuthException>().having(
          (e) => e.message,
          'message',
          contains('social login'),
        )),
      );
    });

    test('throws AuthException when password does not match', () async {
      // Arrange - use a hash that does NOT match testPassword
      // This is a valid BCrypt hash but for a different password
      final wrongHash =
          '\$2b\$12\$AAAAAAAAAAAAAAAAAAAAAO/V1ze2MBGsFMXhBYFBxhjNgDY/AAAA';

      when(() => mockDb.findUserByEmail(testEmail))
          .thenAnswer((_) async => {'id': testUserId, 'email': testEmail});

      when(() => mockAccounts.findCredentialAccount(testUserId))
          .thenAnswer((_) async => {
                'id': 'account-1',
                'password': wrongHash,
              });

      // Act & Assert
      expect(
        () => service.signInWithEmail(testEmail, testPassword),
        throwsA(isA<AuthException>()),
      );
    });

    test('creates session with ipAddress and userAgent when provided',
        () async {
      // Arrange
      final userMap = {
        'id': testUserId,
        'email': testEmail,
        'name': 'Test User',
        'emailVerified': true,
        'onboardingCompleted': false,
        'role': 'CONSULTEE',
      };

      final hashedPassword =
          BCrypt.hashpw(testPassword, BCrypt.gensalt(logRounds: 12));

      when(() => mockDb.findUserByEmail(testEmail))
          .thenAnswer((_) async => userMap);

      when(() => mockAccounts.findCredentialAccount(testUserId))
          .thenAnswer((_) async => {
                'id': 'account-1',
                'password': hashedPassword,
              });

      when(() => mockSessions.create(
            id: any(named: 'id'),
            token: any(named: 'token'),
            userId: any(named: 'userId'),
            expiresAt: any(named: 'expiresAt'),
            ipAddress: any(named: 'ipAddress'),
            userAgent: any(named: 'userAgent'),
          )).thenAnswer((_) async => {
            'id': 'session-1',
            'userId': testUserId,
            'expiresAt': DateTime.now().add(const Duration(days: 30)),
          });

      when(() => mockJwtService.createToken(
            userId: any(named: 'userId'),
            sessionId: any(named: 'sessionId'),
          )).thenReturn('mock-jwt-token');

      // Act
      await service.signInWithEmail(
        testEmail,
        testPassword,
        ipAddress: '127.0.0.1',
        userAgent: 'TestAgent/1.0',
      );

      // Assert - verify session was created with client info
      verify(() => mockSessions.create(
            id: any(named: 'id'),
            token: any(named: 'token'),
            userId: testUserId,
            expiresAt: any(named: 'expiresAt'),
            ipAddress: '127.0.0.1',
            userAgent: 'TestAgent/1.0',
          )).called(1);
    });
  });

  group('signUpWithEmail', () {
    const testEmail = 'newuser@example.com';
    const testPassword = 'securepassword';
    const testName = 'New User';

    test('succeeds when email is not taken', () async {
      // Arrange
      when(() => mockDb.findUserByEmail(testEmail))
          .thenAnswer((_) async => null);

      final createdUser = {
        'id': 'new-user-id',
        'email': testEmail,
        'name': testName,
        'emailVerified': false,
        'onboardingCompleted': false,
        'role': 'CONSULTEE',
        'createdAt': DateTime.now().toIso8601String(),
        'updatedAt': DateTime.now().toIso8601String(),
      };

      when(() => mockDb.executeInTransaction<Map<String, dynamic>>(
            any(),
          )).thenAnswer((invocation) async {
        // Execute the callback with a fake transaction executor
        final callback = invocation.positionalArguments[0]
            as Future<Map<String, dynamic>> Function(TransactionExecutor);
        return callback(FakeTransactionExecutor());
      });

      when(() => mockDb.createUser(
            id: any(named: 'id'),
            email: any(named: 'email'),
            name: any(named: 'name'),
            executor: any(named: 'executor'),
          )).thenAnswer((_) async => createdUser);

      when(() => mockAccounts.createCredentials(
            id: any(named: 'id'),
            userId: any(named: 'userId'),
            hashedPassword: any(named: 'hashedPassword'),
            txn: any(named: 'txn'),
          )).thenAnswer((_) async => {'id': 'account-1'});

      when(() => mockDb.createConsulteeProfile(
            id: any(named: 'id'),
            userId: any(named: 'userId'),
            executor: any(named: 'executor'),
          )).thenAnswer((_) async => {'id': 'profile-1'});

      when(() => mockSessions.create(
            id: any(named: 'id'),
            token: any(named: 'token'),
            userId: any(named: 'userId'),
            expiresAt: any(named: 'expiresAt'),
            ipAddress: any(named: 'ipAddress'),
            userAgent: any(named: 'userAgent'),
          )).thenAnswer((_) async => {
            'id': 'session-1',
            'userId': 'new-user-id',
            'expiresAt': DateTime.now().add(const Duration(days: 30)),
          });

      when(() => mockJwtService.createToken(
            userId: any(named: 'userId'),
            sessionId: any(named: 'sessionId'),
          )).thenReturn('new-jwt-token');

      // Act
      final result = await service.signUpWithEmail(
        testEmail,
        testPassword,
        name: testName,
      );

      // Assert
      expect(result['token'], equals('new-jwt-token'));
      expect(result['user'], isNotNull);
      expect(result['session'], isNotNull);
    });

    test('throws AuthException with 409 when email already exists', () async {
      // Arrange
      when(() => mockDb.findUserByEmail(testEmail)).thenAnswer(
        (_) async => {'id': 'existing-id', 'email': testEmail},
      );

      // Act & Assert
      expect(
        () => service.signUpWithEmail(testEmail, testPassword),
        throwsA(isA<AuthException>().having(
          (e) => e.statusCode,
          'statusCode',
          equals(409),
        )),
      );
    });
  });

  group('getSession', () {
    test('returns session and user data for valid session', () async {
      // Arrange
      final sessionData = {
        'id': 'session-1',
        'userId': 'user-1',
        'expiresAt': DateTime.now().add(const Duration(days: 30)),
        'user_id': 'user-1',
        'user_name': 'Test User',
        'user_email': 'test@example.com',
        'user_image': null,
        'user_role': 'CONSULTEE',
        'user_onboardingCompleted': true,
      };

      when(() => mockDb.findSessionById('session-1'))
          .thenAnswer((_) async => sessionData);

      // Act
      final result = await service.getSession('session-1');

      // Assert
      expect(result, isNotNull);
      expect(result!['session'], isNotNull);
      expect(result['user'], isNotNull);
      expect((result['user'] as Map)['name'], equals('Test User'));
    });

    test('returns null when session not found', () async {
      // Arrange
      when(() => mockDb.findSessionById('invalid-session'))
          .thenAnswer((_) async => null);

      // Act
      final result = await service.getSession('invalid-session');

      // Assert
      expect(result, isNull);
    });
  });

  group('getUser', () {
    test('returns sanitized user data when user exists', () async {
      // Arrange
      when(() => mockDb.findUserById('user-1')).thenAnswer((_) async => {
            'id': 'user-1',
            'email': 'test@example.com',
            'name': 'Test User',
            'image': null,
            'role': 'CONSULTEE',
            'emailVerified': true,
            'onboardingCompleted': true,
            'createdAt': DateTime.now().toIso8601String(),
            'updatedAt': DateTime.now().toIso8601String(),
          });

      // Act
      final result = await service.getUser('user-1');

      // Assert
      expect(result, isNotNull);
      expect(result!['id'], equals('user-1'));
      expect(result['email'], equals('test@example.com'));
    });

    test('returns null when user does not exist', () async {
      // Arrange
      when(() => mockDb.findUserById('nonexistent'))
          .thenAnswer((_) async => null);

      // Act
      final result = await service.getUser('nonexistent');

      // Assert
      expect(result, isNull);
    });
  });

  group('signOut', () {
    test('deletes session by ID', () async {
      // Arrange
      when(() => mockDb.deleteSession('session-to-delete'))
          .thenAnswer((_) async {});

      // Act
      await service.signOut('session-to-delete');

      // Assert
      verify(() => mockDb.deleteSession('session-to-delete')).called(1);
    });
  });

  group('signInWithGoogle', () {
    test('throws AuthException when neither idToken nor accessToken provided',
        () async {
      expect(
        () => service.signInWithGoogle(),
        throwsA(isA<AuthException>().having(
          (e) => e.statusCode,
          'statusCode',
          equals(400),
        )),
      );
    });

    test(
        'throws AuthException when both tokens are empty strings',
        () async {
      expect(
        () => service.signInWithGoogle(
          idToken: '',
          accessToken: '',
        ),
        throwsA(isA<AuthException>().having(
          (e) => e.statusCode,
          'statusCode',
          equals(400),
        )),
      );
    });
  });

  group('signInWithGitHub', () {
    test('throws AuthException when github user email is null', () async {
      // Arrange
      final githubUser = GitHubUserInfo(
        id: 12345,
        login: 'testuser',
        email: null,
        name: 'Test User',
        avatarUrl: 'https://avatars.githubusercontent.com/u/12345',
      );

      // Act & Assert
      expect(
        () => service.signInWithGitHub(githubUser),
        throwsA(isA<AuthException>().having(
          (e) => e.statusCode,
          'statusCode',
          equals(400),
        )),
      );
    });

    test('throws AuthException when github user email is empty', () async {
      // Arrange
      final githubUser = GitHubUserInfo(
        id: 12345,
        login: 'testuser',
        email: '',
        name: 'Test User',
      );

      // Act & Assert
      expect(
        () => service.signInWithGitHub(githubUser),
        throwsA(isA<AuthException>().having(
          (e) => e.statusCode,
          'statusCode',
          equals(400),
        )),
      );
    });

    test('creates new user and session for new GitHub user', () async {
      // Arrange
      final githubUser = GitHubUserInfo(
        id: 12345,
        login: 'testuser',
        email: 'github@example.com',
        name: 'GitHub User',
        avatarUrl: 'https://avatars.githubusercontent.com/u/12345',
      );

      when(() => mockDb.findUserByEmail('github@example.com'))
          .thenAnswer((_) async => null);

      final createdUser = {
        'id': 'new-user-id',
        'email': 'github@example.com',
        'name': 'GitHub User',
        'image': 'https://avatars.githubusercontent.com/u/12345',
        'emailVerified': false,
        'onboardingCompleted': false,
        'role': 'CONSULTEE',
        'createdAt': DateTime.now().toIso8601String(),
        'updatedAt': DateTime.now().toIso8601String(),
      };

      when(() => mockDb.executeInTransaction<Map<String, dynamic>>(
            any(),
          )).thenAnswer((invocation) async {
        final callback = invocation.positionalArguments[0]
            as Future<Map<String, dynamic>> Function(TransactionExecutor);
        return callback(FakeTransactionExecutor());
      });

      when(() => mockDb.createUser(
            id: any(named: 'id'),
            email: any(named: 'email'),
            name: any(named: 'name'),
            image: any(named: 'image'),
            executor: any(named: 'executor'),
          )).thenAnswer((_) async => createdUser);

      when(() => mockAccounts.createOAuth(
            id: any(named: 'id'),
            userId: any(named: 'userId'),
            providerId: any(named: 'providerId'),
            accountId: any(named: 'accountId'),
            txn: any(named: 'txn'),
          )).thenAnswer((_) async => {'id': 'oauth-account-1'});

      when(() => mockDb.createConsulteeProfile(
            id: any(named: 'id'),
            userId: any(named: 'userId'),
            executor: any(named: 'executor'),
          )).thenAnswer((_) async => {'id': 'profile-1'});

      when(() => mockSessions.create(
            id: any(named: 'id'),
            token: any(named: 'token'),
            userId: any(named: 'userId'),
            expiresAt: any(named: 'expiresAt'),
            ipAddress: any(named: 'ipAddress'),
            userAgent: any(named: 'userAgent'),
          )).thenAnswer((_) async => {
            'id': 'session-1',
            'userId': 'new-user-id',
            'expiresAt': DateTime.now().add(const Duration(days: 30)),
          });

      when(() => mockJwtService.createToken(
            userId: any(named: 'userId'),
            sessionId: any(named: 'sessionId'),
          )).thenReturn('github-jwt-token');

      // Act
      final result = await service.signInWithGitHub(githubUser);

      // Assert
      expect(result['token'], equals('github-jwt-token'));
      expect(result['user'], isNotNull);
      expect(result['session'], isNotNull);
    });

    test('updates existing user info for returning GitHub user', () async {
      // Arrange
      final githubUser = GitHubUserInfo(
        id: 12345,
        login: 'testuser',
        email: 'existing@example.com',
        name: 'Updated Name',
        avatarUrl: 'https://new-avatar.png',
      );

      final existingUser = {
        'id': 'existing-user-id',
        'email': 'existing@example.com',
        'name': 'Old Name',
        'image': 'https://old-avatar.png',
        'emailVerified': true,
        'onboardingCompleted': true,
        'role': 'CONSULTEE',
        'createdAt': DateTime.now().toIso8601String(),
        'updatedAt': DateTime.now().toIso8601String(),
      };

      when(() => mockDb.findUserByEmail('existing@example.com'))
          .thenAnswer((_) async => existingUser);

      when(() => mockDb.updateUser(
            id: 'existing-user-id',
            name: 'Updated Name',
            image: 'https://new-avatar.png',
          )).thenAnswer((_) async => {
            ...existingUser,
            'name': 'Updated Name',
            'image': 'https://new-avatar.png',
          });

      when(() => mockSessions.create(
            id: any(named: 'id'),
            token: any(named: 'token'),
            userId: any(named: 'userId'),
            expiresAt: any(named: 'expiresAt'),
            ipAddress: any(named: 'ipAddress'),
            userAgent: any(named: 'userAgent'),
          )).thenAnswer((_) async => {
            'id': 'session-1',
            'userId': 'existing-user-id',
            'expiresAt': DateTime.now().add(const Duration(days: 30)),
          });

      when(() => mockJwtService.createToken(
            userId: any(named: 'userId'),
            sessionId: any(named: 'sessionId'),
          )).thenReturn('returning-jwt-token');

      // Act
      final result = await service.signInWithGitHub(githubUser);

      // Assert
      expect(result['token'], equals('returning-jwt-token'));
      verify(() => mockDb.updateUser(
            id: 'existing-user-id',
            name: 'Updated Name',
            image: 'https://new-avatar.png',
          )).called(1);
    });
  });
}
