import 'package:backend/database/repositories/verification_repository.dart';
import 'package:mocktail/mocktail.dart';
import 'package:prisma_flutter_connector/runtime_server.dart';
import 'package:test/test.dart';

import '../helpers/prisma_mocks.dart';

class MockQueryExecutor extends Mock implements QueryExecutor {}

class FakeJsonQuery extends Fake implements JsonQuery {}

void main() {
  late MockQueryExecutor mockExecutor;
  late MockPrismaClient mockPrisma;
  late MockVerificationDelegate mockVerifications;
  late VerificationRepository repository;

  setUpAll(() {
    registerFallbackValue(FakeJsonQuery());
    registerPrismaFallbacks();
  });

  setUp(() {
    mockExecutor = MockQueryExecutor();
    mockPrisma = MockPrismaClient();
    mockVerifications = MockVerificationDelegate();
    when(() => mockPrisma.verification).thenReturn(mockVerifications);
    repository = VerificationRepository(mockExecutor, mockPrisma);
  });

  group('findByValueAndIdentifierPrefix', () {
    test('returns matching verification', () async {
      when(() => mockVerifications.findFirst(where: any(named: 'where')))
          .thenAnswer((_) async => buildVerification(id: 'v1'));

      final result = await repository.findByValueAndIdentifierPrefix(
        value: 'token123',
        identifierPrefix: 'password-reset:',
      );

      expect(result?['id'], equals('v1'));
      expect(result?['value'], equals('token123'));
      expect(
        result?['identifier'],
        equals('password-reset:test@example.com'),
      );
      verify(() => mockVerifications.findFirst(where: any(named: 'where')))
          .called(1);
    });

    test('returns null when no match found', () async {
      when(() => mockVerifications.findFirst(where: any(named: 'where')))
          .thenAnswer((_) async => null);

      final result = await repository.findByValueAndIdentifierPrefix(
        value: 'nonexistent-token',
        identifierPrefix: 'password-reset:',
      );

      expect(result, isNull);
    });

    test('distinguishes between different identifier prefixes', () async {
      when(() => mockVerifications.findFirst(where: any(named: 'where')))
          .thenAnswer((_) async => null);

      await repository.findByValueAndIdentifierPrefix(
        value: 'token123',
        identifierPrefix: 'email-verify:',
      );

      await repository.findByValueAndIdentifierPrefix(
        value: 'token123',
        identifierPrefix: 'password-reset:',
      );

      verify(() => mockVerifications.findFirst(where: any(named: 'where')))
          .called(2);
    });
  });

  group('deleteExpired', () {
    test('returns affected row count', () async {
      when(() => mockVerifications.deleteMany(where: any(named: 'where')))
          .thenAnswer((_) async => 5);

      final count = await repository.deleteExpired();

      expect(count, equals(5));
      verify(() => mockVerifications.deleteMany(where: any(named: 'where')))
          .called(1);
    });

    test('returns 0 when no expired verifications', () async {
      when(() => mockVerifications.deleteMany(where: any(named: 'where')))
          .thenAnswer((_) async => 0);

      final count = await repository.deleteExpired();

      expect(count, equals(0));
    });
  });
}
