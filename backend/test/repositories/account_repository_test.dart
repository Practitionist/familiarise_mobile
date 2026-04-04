import 'package:backend/database/repositories/account_repository.dart';
import 'package:backend/generated/index.dart';
import 'package:mocktail/mocktail.dart';
import 'package:prisma_flutter_connector/runtime_server.dart';
import 'package:test/test.dart';

class MockQueryExecutor extends Mock implements QueryExecutor {}

class MockPrismaClient extends Mock implements PrismaClient {}

class FakeJsonQuery extends Fake implements JsonQuery {}

void main() {
  late MockQueryExecutor mockExecutor;
  late AccountRepository repository;

  setUpAll(() {
    registerFallbackValue(FakeJsonQuery());
  });

  setUp(() {
    mockExecutor = MockQueryExecutor();
    repository = AccountRepository(mockExecutor, MockPrismaClient());
  });

  group('findByUserAndProvider', () {
    test('returns account when found', () async {
      final expected = {
        'id': 'acc-1',
        'userId': 'user-1',
        'providerId': 'google',
        'accountId': 'google-123',
      };

      when(() => mockExecutor.executeQueryAsSingleMap(any()))
          .thenAnswer((_) async => expected);

      final result = await repository.findByUserAndProvider(
        'user-1',
        'google',
      );

      expect(result, equals(expected));
      verify(() => mockExecutor.executeQueryAsSingleMap(any())).called(1);
    });

    test('returns null when no account found', () async {
      when(() => mockExecutor.executeQueryAsSingleMap(any()))
          .thenAnswer((_) async => null);

      final result = await repository.findByUserAndProvider(
        'user-1',
        'github',
      );

      expect(result, isNull);
    });
  });

  group('findCredentialAccount', () {
    test('returns credential account for user', () async {
      final expected = {
        'id': 'acc-1',
        'userId': 'user-1',
        'providerId': 'credential',
        'accountId': 'user-1',
        'password': 'hashed-pw',
      };

      when(() => mockExecutor.executeQueryAsSingleMap(any()))
          .thenAnswer((_) async => expected);

      final result = await repository.findCredentialAccount('user-1');

      expect(result, equals(expected));
      expect(result?['providerId'], equals('credential'));
      verify(() => mockExecutor.executeQueryAsSingleMap(any())).called(1);
    });

    test('returns null when no credential account exists', () async {
      when(() => mockExecutor.executeQueryAsSingleMap(any()))
          .thenAnswer((_) async => null);

      final result = await repository.findCredentialAccount('user-1');

      expect(result, isNull);
    });
  });

  group('updatePassword', () {
    test('updates password and returns updated account', () async {
      final expected = {
        'id': 'acc-1',
        'userId': 'user-1',
        'password': 'new-hashed-pw',
      };

      when(() => mockExecutor.executeQueryAsSingleMap(any()))
          .thenAnswer((_) async => expected);

      final result = await repository.updatePassword(
        accountId: 'acc-1',
        hashedPassword: 'new-hashed-pw',
      );

      expect(result?['password'], equals('new-hashed-pw'));
      verify(() => mockExecutor.executeQueryAsSingleMap(any())).called(1);
    });

    test('returns null when account not found', () async {
      when(() => mockExecutor.executeQueryAsSingleMap(any()))
          .thenAnswer((_) async => null);

      final result = await repository.updatePassword(
        accountId: 'nonexistent',
        hashedPassword: 'new-hashed-pw',
      );

      expect(result, isNull);
    });
  });

  group('createOAuth', () {
    test('creates OAuth account link and returns result', () async {
      final expected = {
        'id': 'acc-1',
        'userId': 'user-1',
        'providerId': 'google',
        'accountId': 'google-123',
        'accessToken': 'access-token-xyz',
        'idToken': 'id-token-xyz',
      };

      when(() => mockExecutor.executeQueryAsSingleMap(any()))
          .thenAnswer((_) async => expected);

      final result = await repository.createOAuth(
        id: 'acc-1',
        userId: 'user-1',
        providerId: 'google',
        accountId: 'google-123',
        accessToken: 'access-token-xyz',
        idToken: 'id-token-xyz',
      );

      expect(result['providerId'], equals('google'));
      expect(result['accessToken'], equals('access-token-xyz'));
      verify(() => mockExecutor.executeQueryAsSingleMap(any())).called(1);
    });

    test('creates OAuth account without optional tokens', () async {
      final expected = {
        'id': 'acc-2',
        'userId': 'user-1',
        'providerId': 'github',
        'accountId': 'github-456',
      };

      when(() => mockExecutor.executeQueryAsSingleMap(any()))
          .thenAnswer((_) async => expected);

      final result = await repository.createOAuth(
        id: 'acc-2',
        userId: 'user-1',
        providerId: 'github',
        accountId: 'github-456',
      );

      expect(result['providerId'], equals('github'));
    });

    test('throws when database fails to create OAuth account', () async {
      when(() => mockExecutor.executeQueryAsSingleMap(any()))
          .thenAnswer((_) async => null);

      expect(
        () => repository.createOAuth(
          id: 'acc-1',
          userId: 'user-1',
          providerId: 'google',
          accountId: 'google-123',
        ),
        throwsA(isA<Exception>()),
      );
    });
  });

  group('createCredentials', () {
    test('creates credential account and returns result', () async {
      final expected = {
        'id': 'acc-1',
        'userId': 'user-1',
        'providerId': 'credential',
        'accountId': 'user-1',
        'password': 'hashed-pw-123',
      };

      when(() => mockExecutor.executeQueryAsSingleMap(any()))
          .thenAnswer((_) async => expected);

      final result = await repository.createCredentials(
        id: 'acc-1',
        userId: 'user-1',
        hashedPassword: 'hashed-pw-123',
      );

      expect(result['providerId'], equals('credential'));
      expect(result['accountId'], equals('user-1'));
      expect(result['password'], equals('hashed-pw-123'));
      verify(() => mockExecutor.executeQueryAsSingleMap(any())).called(1);
    });

    test('throws when database fails to create credentials', () async {
      when(() => mockExecutor.executeQueryAsSingleMap(any()))
          .thenAnswer((_) async => null);

      expect(
        () => repository.createCredentials(
          id: 'acc-1',
          userId: 'user-1',
          hashedPassword: 'hashed-pw',
        ),
        throwsA(isA<Exception>()),
      );
    });
  });
}
