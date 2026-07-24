import 'package:backend/database/repositories/user_repository.dart';
import 'package:backend/generated/index.dart';
import 'package:mocktail/mocktail.dart';
import 'package:prisma_flutter_connector/runtime_server.dart';
import 'package:test/test.dart';

class MockQueryExecutor extends Mock implements QueryExecutor {}

class MockPrismaClient extends Mock implements PrismaClient {}

class MockUserDelegate extends Mock implements UserDelegate {}

class FakeJsonQuery extends Fake implements JsonQuery {}

class FakeUserWhereInput extends Fake implements UserWhereInput {}

class FakeUserWhereUniqueInput extends Fake implements UserWhereUniqueInput {}

class FakeCreateUserInput extends Fake implements CreateUserInput {}

class FakeUpdateUserInput extends Fake implements UpdateUserInput {}

/// Build a User model with the required scalars filled in.
User buildUser({
  String id = 'user-1',
  String name = 'Test User',
  String email = 'test@example.com',
  UserRole role = UserRole.consultee,
  bool emailVerified = false,
  bool onboardingCompleted = false,
  String? phone,
  String? city,
  String? country,
  String? consultantProfileId,
}) {
  final now = DateTime.utc(2026, 1, 1);
  return User(
    id: id,
    name: name,
    email: email,
    role: role,
    emailVerified: emailVerified,
    onboardingCompleted: onboardingCompleted,
    phone: phone,
    city: city,
    country: country,
    consultantProfileId: consultantProfileId,
    createdAt: now,
    updatedAt: now,
  );
}

void main() {
  late MockQueryExecutor mockExecutor;
  late MockPrismaClient mockPrisma;
  late MockUserDelegate mockUsers;
  late UserRepository repository;

  setUpAll(() {
    registerFallbackValue(FakeJsonQuery());
    registerFallbackValue(FakeUserWhereInput());
    registerFallbackValue(FakeUserWhereUniqueInput());
    registerFallbackValue(FakeCreateUserInput());
    registerFallbackValue(FakeUpdateUserInput());
  });

  setUp(() {
    mockExecutor = MockQueryExecutor();
    mockPrisma = MockPrismaClient();
    mockUsers = MockUserDelegate();
    when(() => mockPrisma.user).thenReturn(mockUsers);
    repository = UserRepository(mockExecutor, mockPrisma);
  });

  group('findByEmail', () {
    test('returns user when found', () async {
      when(() => mockUsers.findFirst(where: any(named: 'where')))
          .thenAnswer((_) async => buildUser());

      final result = await repository.findByEmail('test@example.com');

      expect(result?['id'], equals('user-1'));
      expect(result?['email'], equals('test@example.com'));
      expect(result?['role'], equals('CONSULTEE'));
      verify(() => mockUsers.findFirst(where: any(named: 'where'))).called(1);
    });

    test('returns null when user not found', () async {
      when(() => mockUsers.findFirst(where: any(named: 'where')))
          .thenAnswer((_) async => null);

      final result = await repository.findByEmail('nonexistent@example.com');

      expect(result, isNull);
    });
  });

  group('findById', () {
    test('returns user when found', () async {
      when(() => mockUsers.findFirst(where: any(named: 'where')))
          .thenAnswer((_) async => buildUser());

      final result = await repository.findById('user-1');

      expect(result?['id'], equals('user-1'));
      verify(() => mockUsers.findFirst(where: any(named: 'where'))).called(1);
    });

    test('returns null when user not found', () async {
      when(() => mockUsers.findFirst(where: any(named: 'where')))
          .thenAnswer((_) async => null);

      final result = await repository.findById('nonexistent-id');

      expect(result, isNull);
    });
  });

  group('create', () {
    test('creates user and returns result', () async {
      when(() => mockUsers.create(data: any(named: 'data'))).thenAnswer(
        (_) async => buildUser(email: 'new@example.com', name: 'New User'),
      );

      final result = await repository.create(
        id: 'user-1',
        email: 'new@example.com',
        name: 'New User',
      );

      expect(result['email'], equals('new@example.com'));
      expect(result['emailVerified'], isFalse);
      expect(result['onboardingCompleted'], isFalse);
      verify(() => mockUsers.create(data: any(named: 'data'))).called(1);
    });

    test('creates user with custom role', () async {
      when(() => mockUsers.create(data: any(named: 'data'))).thenAnswer(
        (_) async => buildUser(
          id: 'user-2',
          email: 'consultant@example.com',
          name: 'Consultant',
          role: UserRole.consultant,
        ),
      );

      final result = await repository.create(
        id: 'user-2',
        email: 'consultant@example.com',
        name: 'Consultant',
        role: 'CONSULTANT',
      );

      expect(result['role'], equals('CONSULTANT'));
    });

    test('throws on an unsupported role wire value', () async {
      expect(
        () => repository.create(
          id: 'user-1',
          email: 'fail@example.com',
          role: 'WIZARD',
        ),
        throwsA(isA<ArgumentError>()),
      );
    });
  });

  group('update', () {
    test('updates user name and returns result', () async {
      when(
        () => mockUsers.updateMany(
          where: any(named: 'where'),
          data: any(named: 'data'),
        ),
      ).thenAnswer((_) async => 1);
      when(() => mockUsers.findFirst(where: any(named: 'where')))
          .thenAnswer((_) async => buildUser(name: 'Updated Name'));

      final result = await repository.update(
        id: 'user-1',
        name: 'Updated Name',
      );

      expect(result?['name'], equals('Updated Name'));
      verify(
        () => mockUsers.updateMany(
          where: any(named: 'where'),
          data: any(named: 'data'),
        ),
      ).called(1);
    });

    test('updates multiple fields', () async {
      when(
        () => mockUsers.updateMany(
          where: any(named: 'where'),
          data: any(named: 'data'),
        ),
      ).thenAnswer((_) async => 1);
      when(() => mockUsers.findFirst(where: any(named: 'where'))).thenAnswer(
        (_) async => buildUser(
          name: 'Updated',
          phone: '+1234567890',
          city: 'New York',
          country: 'US',
        ),
      );

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
      when(
        () => mockUsers.updateMany(
          where: any(named: 'where'),
          data: any(named: 'data'),
        ),
      ).thenAnswer((_) async => 0);

      final result = await repository.update(
        id: 'nonexistent',
        name: 'test',
      );

      expect(result, isNull);
      // No re-read when nothing matched.
      verifyNever(() => mockUsers.findFirst(where: any(named: 'where')));
    });
  });

  group('updateEmailVerified', () {
    test('marks email as verified', () async {
      when(
        () => mockUsers.updateMany(
          where: any(named: 'where'),
          data: any(named: 'data'),
        ),
      ).thenAnswer((_) async => 1);
      when(() => mockUsers.findFirst(where: any(named: 'where')))
          .thenAnswer((_) async => buildUser(emailVerified: true));

      final result = await repository.updateEmailVerified(
        id: 'user-1',
        verified: true,
      );

      expect(result?['emailVerified'], isTrue);
    });

    test('marks email as unverified', () async {
      when(
        () => mockUsers.updateMany(
          where: any(named: 'where'),
          data: any(named: 'data'),
        ),
      ).thenAnswer((_) async => 1);
      when(() => mockUsers.findFirst(where: any(named: 'where')))
          .thenAnswer((_) async => buildUser());

      final result = await repository.updateEmailVerified(
        id: 'user-1',
        verified: false,
      );

      expect(result?['emailVerified'], isFalse);
    });
  });

  group('updateForOnboarding', () {
    test('updates user with onboarding data', () async {
      when(
        () => mockUsers.updateMany(
          where: any(named: 'where'),
          data: any(named: 'data'),
        ),
      ).thenAnswer((_) async => 1);
      when(() => mockUsers.findFirst(where: any(named: 'where'))).thenAnswer(
        (_) async => buildUser(
          name: 'Onboarded User',
          onboardingCompleted: true,
          phone: '+1234567890',
        ),
      );

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
    });

    test('includes optional profile IDs when provided', () async {
      when(
        () => mockUsers.updateMany(
          where: any(named: 'where'),
          data: any(named: 'data'),
        ),
      ).thenAnswer((_) async => 1);
      when(() => mockUsers.findFirst(where: any(named: 'where'))).thenAnswer(
        (_) async => buildUser(
          name: 'Consultant',
          role: UserRole.consultant,
          onboardingCompleted: true,
          consultantProfileId: 'cp-1',
        ),
      );

      final result = await repository.updateForOnboarding(
        id: 'user-1',
        role: 'CONSULTANT',
        name: 'Consultant',
        onboardingCompleted: true,
        consultantProfileId: 'cp-1',
      );

      expect(result?['consultantProfileId'], equals('cp-1'));
    });

    test('returns null when user not found', () async {
      when(
        () => mockUsers.updateMany(
          where: any(named: 'where'),
          data: any(named: 'data'),
        ),
      ).thenAnswer((_) async => 0);

      final result = await repository.updateForOnboarding(
        id: 'nonexistent',
        role: 'CONSULTEE',
        name: 'Ghost',
        onboardingCompleted: true,
      );

      expect(result, isNull);
    });
  });

  group('delete', () {
    test('deletes user successfully', () async {
      when(() => mockUsers.delete(where: any(named: 'where')))
          .thenAnswer((_) async => buildUser());

      await expectLater(repository.delete('user-1'), completes);

      verify(() => mockUsers.delete(where: any(named: 'where'))).called(1);
    });
  });
}
