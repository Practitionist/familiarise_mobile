import 'package:backend/database/repositories/verification_repository.dart';
import 'package:mocktail/mocktail.dart';
import 'package:prisma_flutter_connector/runtime_server.dart';
import 'package:test/test.dart';

class MockQueryExecutor extends Mock implements QueryExecutor {}

class FakeJsonQuery extends Fake implements JsonQuery {}

void main() {
  late MockQueryExecutor mockExecutor;
  late VerificationRepository repository;

  setUpAll(() {
    registerFallbackValue(FakeJsonQuery());
  });

  setUp(() {
    mockExecutor = MockQueryExecutor();
    repository = VerificationRepository(mockExecutor);
  });

  group('findByValueAndIdentifierPrefix', () {
    test('returns matching verification', () async {
      final expected = {
        'id': 'v1',
        'identifier': 'password-reset:test@example.com',
        'value': 'token123',
        'expiresAt': '2099-12-31T00:00:00.000Z',
      };

      when(() => mockExecutor.executeQueryAsSingleMap(any()))
          .thenAnswer((_) async => expected);

      final result = await repository.findByValueAndIdentifierPrefix(
        value: 'token123',
        identifierPrefix: 'password-reset:',
      );

      expect(result, equals(expected));
      verify(() => mockExecutor.executeQueryAsSingleMap(any())).called(1);
    });

    test('returns null when no match found', () async {
      when(() => mockExecutor.executeQueryAsSingleMap(any()))
          .thenAnswer((_) async => null);

      final result = await repository.findByValueAndIdentifierPrefix(
        value: 'nonexistent-token',
        identifierPrefix: 'password-reset:',
      );

      expect(result, isNull);
    });

    test('distinguishes between different identifier prefixes', () async {
      when(() => mockExecutor.executeQueryAsSingleMap(any()))
          .thenAnswer((_) async => null);

      await repository.findByValueAndIdentifierPrefix(
        value: 'token123',
        identifierPrefix: 'email-verify:',
      );

      await repository.findByValueAndIdentifierPrefix(
        value: 'token123',
        identifierPrefix: 'password-reset:',
      );

      verify(() => mockExecutor.executeQueryAsSingleMap(any())).called(2);
    });
  });

  group('deleteExpired', () {
    test('returns affected row count', () async {
      when(() => mockExecutor.executeMutation(any()))
          .thenAnswer((_) async => 5);

      final count = await repository.deleteExpired();

      expect(count, equals(5));
      verify(() => mockExecutor.executeMutation(any())).called(1);
    });

    test('returns 0 when no expired verifications', () async {
      when(() => mockExecutor.executeMutation(any()))
          .thenAnswer((_) async => 0);

      final count = await repository.deleteExpired();

      expect(count, equals(0));
    });
  });
}
