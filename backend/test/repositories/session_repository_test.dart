import 'package:backend/database/repositories/session_repository.dart';
import 'package:backend/database/repositories/user_repository.dart';
import 'package:mocktail/mocktail.dart';
import 'package:prisma_flutter_connector/runtime_server.dart';
import 'package:test/test.dart';

class MockQueryExecutor extends Mock implements QueryExecutor {}

class MockUserRepository extends Mock implements UserRepository {}

class FakeJsonQuery extends Fake implements JsonQuery {}

void main() {
  late MockQueryExecutor mockExecutor;
  late MockUserRepository mockUserRepository;
  late SessionRepository repository;

  setUpAll(() {
    registerFallbackValue(FakeJsonQuery());
  });

  setUp(() {
    mockExecutor = MockQueryExecutor();
    mockUserRepository = MockUserRepository();
    repository = SessionRepository(mockExecutor, mockUserRepository);
  });

  group('deleteOtherSessions', () {
    test('executes deleteMany mutation successfully', () async {
      when(() => mockExecutor.executeMutation(any()))
          .thenAnswer((_) async => 3);

      await repository.deleteOtherSessions(
        userId: 'user-1',
        keepSessionId: 'session-keep',
      );

      verify(() => mockExecutor.executeMutation(any())).called(1);
    });

    test('does not throw when no other sessions exist', () async {
      when(() => mockExecutor.executeMutation(any()))
          .thenAnswer((_) async => 0);

      await expectLater(
        repository.deleteOtherSessions(
          userId: 'user-1',
          keepSessionId: 'session-only',
        ),
        completes,
      );
    });
  });
}
