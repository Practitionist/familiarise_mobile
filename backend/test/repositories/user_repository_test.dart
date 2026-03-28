import 'package:backend/database/repositories/user_repository.dart';
import 'package:backend/generated/prisma_client.dart';
import 'package:mocktail/mocktail.dart';
import 'package:prisma_flutter_connector/runtime_server.dart';
import 'package:test/test.dart';

class MockQueryExecutor extends Mock implements QueryExecutor {}

class MockPrismaClient extends Mock implements PrismaClient {}

class FakeJsonQuery extends Fake implements JsonQuery {}

void main() {
  late MockQueryExecutor mockExecutor;
  late MockPrismaClient mockPrisma;
  late UserRepository repository;

  setUpAll(() {
    registerFallbackValue(FakeJsonQuery());
  });

  setUp(() {
    mockExecutor = MockQueryExecutor();
    mockPrisma = MockPrismaClient();
    repository = UserRepository(mockExecutor, mockPrisma);
  });

  group('findByEmail', () {
    test('returns user when found', () async {
      final expected = {
        'id': 'user-1',
        'email': 'test@example.com',
        'name': 'Test User',
        'role': 'CONSULTEE',
      };

      when(() => mockExecutor.executeQueryAsSingleMap(any()))
          .thenAnswer((_) async => expected);

      final result = await repository.findByEmail('test@example.com');

      expect(result, equals(expected));
      verify(() => mockExecutor.executeQueryAsSingleMap(any())).called(1);
    });

    test('returns null when user not found', () async {
      when(() => mockExecutor.executeQueryAsSingleMap(any()))
          .thenAnswer((_) async => null);

      final result = await repository.findByEmail('nonexistent@example.com');

      expect(result, isNull);
    });
  });

  group('findById', () {
    test('returns user when found', () async {
      final expected = {
        'id': 'user-1',
        'email': 'test@example.com',
        'name': 'Test User',
        'role': 'CONSULTEE',
      };

      when(() => mockExecutor.executeQueryAsSingleMap(any()))
          .thenAnswer((_) async => expected);

      final result = await repository.findById('user-1');

      expect(result, equals(expected));
      verify(() => mockExecutor.executeQueryAsSingleMap(any())).called(1);
    });

    test('returns null when user not found', () async {
      when(() => mockExecutor.executeQueryAsSingleMap(any()))
          .thenAnswer((_) async => null);

      final result = await repository.findById('nonexistent-id');

      expect(result, isNull);
    });
  });

  group('create', () {
    test('creates user and returns result', () async {
      final expected = {
        'id': 'user-1',
        'email': 'new@example.com',
        'name': 'New User',
        'role': 'CONSULTEE',
        'emailVerified': false,
        'onboardingCompleted': false,
      };

      when(() => mockExecutor.executeQueryAsSingleMap(any()))
          .thenAnswer((_) async => expected);

      final result = await repository.create(
        id: 'user-1',
        email: 'new@example.com',
        name: 'New User',
      );

      expect(result, equals(expected));
      expect(result['emailVerified'], isFalse);
      expect(result['onboardingCompleted'], isFalse);
      verify(() => mockExecutor.executeQueryAsSingleMap(any())).called(1);
    });

    test('creates user with custom role', () async {
      final expected = {
        'id': 'user-2',
        'email': 'consultant@example.com',
        'name': 'Consultant',
        'role': 'CONSULTANT',
      };

      when(() => mockExecutor.executeQueryAsSingleMap(any()))
          .thenAnswer((_) async => expected);

      final result = await repository.create(
        id: 'user-2',
        email: 'consultant@example.com',
        name: 'Consultant',
        role: 'CONSULTANT',
      );

      expect(result['role'], equals('CONSULTANT'));
    });

    test('throws when database fails to create user', () async {
      when(() => mockExecutor.executeQueryAsSingleMap(any()))
          .thenAnswer((_) async => null);

      expect(
        () => repository.create(
          id: 'user-1',
          email: 'fail@example.com',
        ),
        throwsA(isA<Exception>()),
      );
    });
  });

  group('update', () {
    test('updates user name and returns result', () async {
      final expected = {
        'id': 'user-1',
        'name': 'Updated Name',
        'email': 'test@example.com',
      };

      when(() => mockExecutor.executeQueryAsSingleMap(any()))
          .thenAnswer((_) async => expected);

      final result = await repository.update(
        id: 'user-1',
        name: 'Updated Name',
      );

      expect(result, equals(expected));
      verify(() => mockExecutor.executeQueryAsSingleMap(any())).called(1);
    });

    test('updates multiple fields', () async {
      final expected = {
        'id': 'user-1',
        'name': 'Updated',
        'phone': '+1234567890',
        'city': 'New York',
        'country': 'US',
      };

      when(() => mockExecutor.executeQueryAsSingleMap(any()))
          .thenAnswer((_) async => expected);

      final result = await repository.update(
        id: 'user-1',
        name: 'Updated',
        phone: '+1234567890',
        city: 'New York',
        country: 'US',
      );

      expect(result?['phone'], equals('+1234567890'));
      expect(result?['city'], equals('New York'));
    });

    test('returns null when user not found', () async {
      when(() => mockExecutor.executeQueryAsSingleMap(any()))
          .thenAnswer((_) async => null);

      final result = await repository.update(
        id: 'nonexistent',
        name: 'test',
      );

      expect(result, isNull);
    });
  });

  group('updateEmailVerified', () {
    test('marks email as verified', () async {
      final expected = {
        'id': 'user-1',
        'emailVerified': true,
      };

      when(() => mockExecutor.executeQueryAsSingleMap(any()))
          .thenAnswer((_) async => expected);

      final result = await repository.updateEmailVerified(
        id: 'user-1',
        verified: true,
      );

      expect(result?['emailVerified'], isTrue);
      verify(() => mockExecutor.executeQueryAsSingleMap(any())).called(1);
    });

    test('marks email as unverified', () async {
      final expected = {
        'id': 'user-1',
        'emailVerified': false,
      };

      when(() => mockExecutor.executeQueryAsSingleMap(any()))
          .thenAnswer((_) async => expected);

      final result = await repository.updateEmailVerified(
        id: 'user-1',
        verified: false,
      );

      expect(result?['emailVerified'], isFalse);
    });
  });

  group('updateForOnboarding', () {
    test('updates user with onboarding data', () async {
      final expected = {
        'id': 'user-1',
        'role': 'CONSULTEE',
        'name': 'Onboarded User',
        'onboardingCompleted': true,
        'phone': '+1234567890',
        'gender': 'MALE',
      };

      when(() => mockExecutor.executeQueryAsSingleMap(any()))
          .thenAnswer((_) async => expected);

      final result = await repository.updateForOnboarding(
        id: 'user-1',
        role: 'CONSULTEE',
        name: 'Onboarded User',
        onboardingCompleted: true,
        phone: '+1234567890',
        gender: 'MALE',
      );

      expect(result?['onboardingCompleted'], isTrue);
      expect(result?['name'], equals('Onboarded User'));
      verify(() => mockExecutor.executeQueryAsSingleMap(any())).called(1);
    });

    test('includes optional profile IDs when provided', () async {
      final expected = {
        'id': 'user-1',
        'role': 'CONSULTANT',
        'name': 'Consultant',
        'onboardingCompleted': true,
        'consultantProfileId': 'cp-1',
      };

      when(() => mockExecutor.executeQueryAsSingleMap(any()))
          .thenAnswer((_) async => expected);

      final result = await repository.updateForOnboarding(
        id: 'user-1',
        role: 'CONSULTANT',
        name: 'Consultant',
        onboardingCompleted: true,
        consultantProfileId: 'cp-1',
      );

      expect(result?['consultantProfileId'], equals('cp-1'));
    });
  });

  group('delete', () {
    test('deletes user successfully', () async {
      when(() => mockExecutor.executeMutation(any()))
          .thenAnswer((_) async => 1);

      await expectLater(
        repository.delete('user-1'),
        completes,
      );

      verify(() => mockExecutor.executeMutation(any())).called(1);
    });

    test('completes even when user does not exist', () async {
      when(() => mockExecutor.executeMutation(any()))
          .thenAnswer((_) async => 0);

      await expectLater(
        repository.delete('nonexistent'),
        completes,
      );
    });
  });
}
