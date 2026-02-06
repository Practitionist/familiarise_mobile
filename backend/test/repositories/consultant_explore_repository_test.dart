import 'package:backend/database/repositories/consultant_explore_repository.dart';
import 'package:mocktail/mocktail.dart';
import 'package:prisma_flutter_connector/runtime_server.dart';
import 'package:test/test.dart';

class MockQueryExecutor extends Mock implements QueryExecutor {}

class FakeJsonQuery extends Fake implements JsonQuery {}

void main() {
  late MockQueryExecutor mockExecutor;
  late ConsultantExploreRepository repository;

  setUpAll(() {
    registerFallbackValue(FakeJsonQuery());
  });

  setUp(() {
    mockExecutor = MockQueryExecutor();
    repository = ConsultantExploreRepository(mockExecutor);
  });

  group('findMany', () {
    test('returns consultants with pagination', () async {
      when(() => mockExecutor.executeCount(any()))
          .thenAnswer((_) async => 2);

      when(() => mockExecutor.executeQueryAsMaps(any()))
          .thenAnswer((_) async => [
                {
                  'id': 'cp-1',
                  'userId': 'user-1',
                  'headline': 'Expert in Flutter',
                  'description': 'Senior developer',
                  'rating': 4.5,
                  'experience': 5,
                  'languages': '["English","Hindi"]',
                  'toolsAndTechnologies': '["Flutter","Dart"]',
                  'totalMenteesHelped': 50,
                  'isVerified': true,
                  'domainId': 'dom-1',
                  'createdAt': '2025-01-01T00:00:00.000Z',
                  'user': {'name': 'John Doe', 'image': null},
                  'domain': {'id': 'dom-1', 'name': 'Technology'},
                  'minPrice': 3000,
                  'priceCurrency': 'INR',
                  'subDomains': [
                    {'id': 'sd-1', 'name': 'Mobile Dev', 'domainId': 'dom-1'}
                  ],
                },
                {
                  'id': 'cp-2',
                  'userId': 'user-2',
                  'headline': 'Design Expert',
                  'description': 'UI/UX specialist',
                  'rating': 4.8,
                  'experience': 8,
                  'languages': '["English"]',
                  'toolsAndTechnologies': '["Figma"]',
                  'totalMenteesHelped': 30,
                  'isVerified': true,
                  'domainId': 'dom-2',
                  'createdAt': '2025-02-01T00:00:00.000Z',
                  'user': {'name': 'Jane Smith', 'image': 'img.jpg'},
                  'domain': {'id': 'dom-2', 'name': 'Design'},
                  'minPrice': 5000,
                  'priceCurrency': 'INR',
                  'subDomains': [],
                },
              ]);

      final result = await repository.findMany();

      final consultants = result['consultants'] as List;
      expect(consultants, hasLength(2));

      expect(consultants[0]['headline'], equals('Expert in Flutter'));
      expect(consultants[0]['languages'], isA<List>());
      expect(consultants[0]['user'], isA<Map>());
      expect(consultants[0]['domain'], isA<Map>());

      final pagination = result['pagination'] as Map;
      expect(pagination['totalCount'], equals(2));
      expect(pagination['page'], equals(0));
    });

    test('returns empty list when no consultants found', () async {
      when(() => mockExecutor.executeCount(any()))
          .thenAnswer((_) async => 0);

      when(() => mockExecutor.executeQueryAsMaps(any()))
          .thenAnswer((_) async => []);

      final result = await repository.findMany();

      expect(result['consultants'], isEmpty);
      expect(result['pagination']['totalCount'], equals(0));
      expect(result['pagination']['totalPages'], equals(0));
    });

    test('clamps page size to maximum 50', () async {
      when(() => mockExecutor.executeCount(any()))
          .thenAnswer((_) async => 0);

      when(() => mockExecutor.executeQueryAsMaps(any()))
          .thenAnswer((_) async => []);

      final result = await repository.findMany(pageSize: 200);

      expect(result['pagination']['pageSize'], equals(50));
    });

    test('calculates pagination correctly', () async {
      when(() => mockExecutor.executeCount(any()))
          .thenAnswer((_) async => 45);

      when(() => mockExecutor.executeQueryAsMaps(any()))
          .thenAnswer((_) async => []);

      final result = await repository.findMany(page: 1, pageSize: 20);

      final pagination = result['pagination'] as Map;
      expect(pagination['page'], equals(1));
      expect(pagination['pageSize'], equals(20));
      expect(pagination['totalCount'], equals(45));
      expect(pagination['totalPages'], equals(3));
      expect(pagination['hasNextPage'], isTrue);
      expect(pagination['hasPreviousPage'], isTrue);
    });

    test('hasNextPage is false on last page', () async {
      when(() => mockExecutor.executeCount(any()))
          .thenAnswer((_) async => 10);

      when(() => mockExecutor.executeQueryAsMaps(any()))
          .thenAnswer((_) async => []);

      final result = await repository.findMany(page: 0, pageSize: 20);

      expect(result['pagination']['hasNextPage'], isFalse);
      expect(result['pagination']['hasPreviousPage'], isFalse);
    });

    test('applies domain filter', () async {
      when(() => mockExecutor.executeCount(any()))
          .thenAnswer((_) async => 1);

      when(() => mockExecutor.executeQueryAsMaps(any()))
          .thenAnswer((_) async => [
                {
                  'id': 'cp-1',
                  'userId': 'user-1',
                  'headline': 'Tech Expert',
                  'description': 'desc',
                  'rating': 4.0,
                  'experience': 3,
                  'languages': '[]',
                  'toolsAndTechnologies': '[]',
                  'totalMenteesHelped': 10,
                  'isVerified': true,
                  'domainId': 'dom-1',
                  'createdAt': '2025-01-01T00:00:00.000Z',
                  'user': {'name': 'Test', 'image': null},
                  'domain': {'id': 'dom-1', 'name': 'Tech'},
                  'minPrice': null,
                  'priceCurrency': null,
                  'subDomains': [],
                },
              ]);

      final result = await repository.findMany(domainId: 'dom-1');

      final consultants = result['consultants'] as List;
      expect(consultants, hasLength(1));
      // priceCurrency defaults to 'INR' when null
      expect(consultants[0]['priceCurrency'], equals('INR'));
    });

    test('applies search query', () async {
      when(() => mockExecutor.executeCount(any()))
          .thenAnswer((_) async => 0);

      when(() => mockExecutor.executeQueryAsMaps(any()))
          .thenAnswer((_) async => []);

      final result = await repository.findMany(searchQuery: 'Flutter');

      expect(result['consultants'], isEmpty);
      verify(() => mockExecutor.executeCount(any())).called(1);
      verify(() => mockExecutor.executeQueryAsMaps(any())).called(1);
    });

    test('applies minimum rating filter', () async {
      when(() => mockExecutor.executeCount(any()))
          .thenAnswer((_) async => 0);

      when(() => mockExecutor.executeQueryAsMaps(any()))
          .thenAnswer((_) async => []);

      final result = await repository.findMany(minRating: 4.0);

      expect(result['consultants'], isEmpty);
      verify(() => mockExecutor.executeCount(any())).called(1);
    });
  });

  group('findByIdWithDetails', () {
    test('returns consultant details with plans and reviews', () async {
      // First call for profile query
      when(() => mockExecutor.executeQueryAsMaps(any()))
          .thenAnswer((_) async => [
                {
                  'id': 'cp-1',
                  'userId': 'user-1',
                  'headline': 'Expert Dev',
                  'description': 'Senior developer',
                  'rating': 4.5,
                  'experience': 5,
                  'languages': '["English"]',
                  'toolsAndTechnologies': '["Flutter"]',
                  'totalMenteesHelped': 50,
                  'isVerified': true,
                  'domainId': 'dom-1',
                  'mentoringStyle': 'Hands-on',
                  'sessionTypes': '["VIDEO","CHAT"]',
                  'websiteUrl': 'https://example.com',
                  'twitterUrl': null,
                  'githubUrl': 'https://github.com/test',
                  'videoIntroUrl': null,
                  'createdAt': '2025-01-01T00:00:00.000Z',
                  'updatedAt': '2025-06-01T00:00:00.000Z',
                  'user': {
                    'name': 'John Doe',
                    'image': null,
                    'email': 'john@example.com',
                    'timezone': 'Asia/Kolkata',
                  },
                  'domain': {'id': 'dom-1', 'name': 'Technology'},
                  'subDomains': [
                    {'id': 'sd-1', 'name': 'Mobile Dev', 'domainId': 'dom-1'}
                  ],
                  'tags': [
                    {'name': 'flutter'},
                    {'name': 'dart'},
                  ],
                },
              ]);

      final result = await repository.findByIdWithDetails('cp-1');

      expect(result, isNotNull);
      expect(result?['id'], equals('cp-1'));
      expect(result?['headline'], equals('Expert Dev'));
      expect(result?['languages'], isA<List>());
      expect(result?['tags'], contains('flutter'));
      expect(result?['user'], isA<Map>());
      expect(result?['domain'], isA<Map>());
      expect(result?['subDomains'], isA<List>());
    });

    test('returns null when consultant not found', () async {
      when(() => mockExecutor.executeQueryAsMaps(any()))
          .thenAnswer((_) async => []);

      final result = await repository.findByIdWithDetails('nonexistent');

      expect(result, isNull);
    });
  });

  group('getReviews', () {
    test('returns paginated reviews for consultant', () async {
      when(() => mockExecutor.executeCount(any()))
          .thenAnswer((_) async => 2);

      var queryMapCallCount = 0;
      when(() => mockExecutor.executeQueryAsMaps(any()))
          .thenAnswer((_) async {
        queryMapCallCount++;
        switch (queryMapCallCount) {
          case 1:
            // Reviews query
            return [
              {
                'id': 'rev-1',
                'rating': 5,
                'reviewDescription': 'Excellent mentor',
                'consulteeProfileId': 'consultee-1',
                'createdAt': '2025-06-01T00:00:00.000Z',
              },
              {
                'id': 'rev-2',
                'rating': 4,
                'reviewDescription': 'Very helpful',
                'consulteeProfileId': 'consultee-2',
                'createdAt': '2025-05-15T00:00:00.000Z',
              },
            ];
          case 2:
            // ConsulteeProfile query
            return [
              {'id': 'consultee-1', 'userId': 'user-10'},
              {'id': 'consultee-2', 'userId': 'user-11'},
            ];
          case 3:
            // Users query
            return [
              {'id': 'user-10', 'name': 'Alice', 'image': null},
              {'id': 'user-11', 'name': 'Bob', 'image': 'bob.jpg'},
            ];
          default:
            return [];
        }
      });

      final result = await repository.getReviews(
        consultantId: 'cp-1',
      );

      final reviews = result['reviews'] as List;
      expect(reviews, hasLength(2));
      expect(reviews[0]['rating'], equals(5));
      expect(reviews[0]['description'], equals('Excellent mentor'));
      expect(reviews[0]['reviewer'], isNotNull);

      final pagination = result['pagination'] as Map;
      expect(pagination['totalCount'], equals(2));
    });

    test('returns empty reviews when none exist', () async {
      when(() => mockExecutor.executeCount(any()))
          .thenAnswer((_) async => 0);

      when(() => mockExecutor.executeQueryAsMaps(any()))
          .thenAnswer((_) async => []);

      final result = await repository.getReviews(consultantId: 'cp-1');

      expect(result['reviews'], isEmpty);
      expect(result['pagination']['totalCount'], equals(0));
    });

    test('handles reviews without consultee profile IDs', () async {
      when(() => mockExecutor.executeCount(any()))
          .thenAnswer((_) async => 1);

      var queryMapCallCount = 0;
      when(() => mockExecutor.executeQueryAsMaps(any()))
          .thenAnswer((_) async {
        queryMapCallCount++;
        if (queryMapCallCount == 1) {
          return [
            {
              'id': 'rev-1',
              'rating': 3,
              'reviewDescription': 'OK',
              'consulteeProfileId': null,
              'createdAt': '2025-06-01T00:00:00.000Z',
            },
          ];
        }
        return [];
      });

      final result = await repository.getReviews(consultantId: 'cp-1');

      final reviews = result['reviews'] as List;
      expect(reviews, hasLength(1));
      expect(reviews[0]['reviewer'], isNull);
    });

    test('clamps page size to 50', () async {
      when(() => mockExecutor.executeCount(any()))
          .thenAnswer((_) async => 0);

      when(() => mockExecutor.executeQueryAsMaps(any()))
          .thenAnswer((_) async => []);

      final result = await repository.getReviews(
        consultantId: 'cp-1',
        pageSize: 100,
      );

      expect(result['pagination']['pageSize'], equals(50));
    });
  });
}
