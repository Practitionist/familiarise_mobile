import 'package:backend/database/repositories/account_repository.dart';
import 'package:backend/generated/index.dart';
import 'package:mocktail/mocktail.dart';
import 'package:prisma_flutter_connector/runtime_server.dart';
import 'package:test/test.dart';

import '../helpers/prisma_mocks.dart';

class MockQueryExecutor extends Mock implements QueryExecutor {}

class FakeJsonQuery extends Fake implements JsonQuery {}

void main() {
  late MockQueryExecutor mockExecutor;
  late MockPrismaClient mockPrisma;
  late MockAccountDelegate mockAccounts;
  late AccountRepository repository;

  setUpAll(() {
    registerFallbackValue(FakeJsonQuery());
    registerPrismaFallbacks();
  });

  setUp(() {
    mockExecutor = MockQueryExecutor();
    mockPrisma = MockPrismaClient();
    mockAccounts = MockAccountDelegate();
    when(() => mockPrisma.account).thenReturn(mockAccounts);
    repository = AccountRepository(mockExecutor, mockPrisma);
  });

  group('findByUserAndProvider', () {
    test('returns account when found', () async {
      when(() => mockAccounts.findFirst(where: any(named: 'where')))
          .thenAnswer((_) async => buildAccount(providerId: 'google'));

      final result = await repository.findByUserAndProvider('user-1', 'google');

      expect(result?['id'], equals('account-1'));
      expect(result?['providerId'], equals('google'));

      // Assert the filter actually sent, not merely that a call happened.
      final where = verify(
        () => mockAccounts.findFirst(where: captureAny(named: 'where')),
      ).captured.single as AccountWhereInput;
      expect(where.userId?.equals, equals('user-1'));
      expect(where.providerId?.equals, equals('google'));
    });

    test('returns null when no account found', () async {
      when(() => mockAccounts.findFirst(where: any(named: 'where')))
          .thenAnswer((_) async => null);

      final result = await repository.findByUserAndProvider('user-1', 'github');

      expect(result, isNull);
    });
  });

  group('findCredentialAccount', () {
    test('returns credential account for user', () async {
      when(() => mockAccounts.findFirst(where: any(named: 'where')))
          .thenAnswer((_) async => buildAccount());

      final result = await repository.findCredentialAccount('user-1');

      expect(result?['providerId'], equals('credential'));

      final where = verify(
        () => mockAccounts.findFirst(where: captureAny(named: 'where')),
      ).captured.single as AccountWhereInput;
      expect(where.userId?.equals, equals('user-1'));
      expect(where.providerId?.equals, equals('credential'));
    });

    test('returns null when no credential account exists', () async {
      when(() => mockAccounts.findFirst(where: any(named: 'where')))
          .thenAnswer((_) async => null);

      final result = await repository.findCredentialAccount('user-1');

      expect(result, isNull);
    });
  });

  group('updatePassword', () {
    test('updates password and returns updated account', () async {
      when(
        () => mockAccounts.updateMany(
          where: any(named: 'where'),
          data: any(named: 'data'),
        ),
      ).thenAnswer((_) async => 1);
      when(() => mockAccounts.findFirst(where: any(named: 'where')))
          .thenAnswer((_) async => buildAccount());

      final result = await repository.updatePassword(
        accountId: 'account-1',
        hashedPassword: 'new-hash',
      );

      expect(result?['id'], equals('account-1'));

      final captured = verify(
        () => mockAccounts.updateMany(
          where: captureAny(named: 'where'),
          data: captureAny(named: 'data'),
        ),
      ).captured;
      expect(
          (captured[0] as AccountWhereInput).id?.equals, equals('account-1'));
      expect((captured[1] as UpdateAccountInput).password, equals('new-hash'));
    });

    test('returns null when account not found', () async {
      when(
        () => mockAccounts.updateMany(
          where: any(named: 'where'),
          data: any(named: 'data'),
        ),
      ).thenAnswer((_) async => 0);

      final result = await repository.updatePassword(
        accountId: 'nonexistent',
        hashedPassword: 'new-hash',
      );

      expect(result, isNull);
      verifyNever(() => mockAccounts.findFirst(where: any(named: 'where')));
    });
  });

  group('createOAuth', () {
    test('creates OAuth account link and returns result', () async {
      when(() => mockAccounts.create(data: any(named: 'data')))
          .thenAnswer((_) async => buildAccount(providerId: 'google'));

      final result = await repository.createOAuth(
        id: 'account-1',
        userId: 'user-1',
        providerId: 'google',
        accountId: 'google-123',
        accessToken: 'access-token',
        idToken: 'id-token',
      );

      expect(result['providerId'], equals('google'));

      final data = verify(
        () => mockAccounts.create(data: captureAny(named: 'data')),
      ).captured.single as CreateAccountInput;
      expect(data.userId, equals('user-1'));
      expect(data.providerId, equals('google'));
      expect(data.accountId, equals('google-123'));
      expect(data.accessToken, equals('access-token'));
      expect(data.idToken, equals('id-token'));
    });
  });

  group('createCredentials', () {
    test('creates credential account and returns result', () async {
      when(() => mockAccounts.create(data: any(named: 'data')))
          .thenAnswer((_) async => buildAccount());

      final result = await repository.createCredentials(
        id: 'account-1',
        userId: 'user-1',
        hashedPassword: 'hashed',
      );

      expect(result['providerId'], equals('credential'));
      expect(result['userId'], equals('user-1'));

      final data = verify(
        () => mockAccounts.create(data: captureAny(named: 'data')),
      ).captured.single as CreateAccountInput;
      expect(data.userId, equals('user-1'));
      expect(data.providerId, equals('credential'));
      expect(data.password, equals('hashed'));
    });
  });
}
