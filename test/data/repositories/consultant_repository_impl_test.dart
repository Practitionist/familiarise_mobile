import 'package:familiarise_mobile/core/errors/exceptions.dart';
import 'package:familiarise_mobile/data/datasources/remote/consultant_remote_source.dart';
import 'package:familiarise_mobile/data/models/explore/consultant_details_model.dart';
import 'package:familiarise_mobile/data/models/explore/consultant_model.dart';
import 'package:familiarise_mobile/data/models/explore/review_model.dart';
import 'package:familiarise_mobile/data/repositories/consultant_repository_impl.dart';
import 'package:familiarise_mobile/domain/entities/common/paginated_result.dart';
import 'package:familiarise_mobile/domain/entities/explore/explore_filters.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

// Mock classes
class MockConsultantRemoteSource extends Mock
    implements ConsultantRemoteSource {}

// Fallback value
class FakeExploreFilters extends Fake implements ExploreFilters {}

void main() {
  late ConsultantRepositoryImpl repository;
  late MockConsultantRemoteSource mockRemoteSource;

  setUpAll(() {
    registerFallbackValue(FakeExploreFilters());
  });

  setUp(() {
    mockRemoteSource = MockConsultantRemoteSource();
    repository = ConsultantRepositoryImpl(mockRemoteSource);
  });

  // Test data
  const testConsultantId = 'consultant-123';
  const testPagination = Pagination(
    page: 0,
    pageSize: 20,
    totalCount: 2,
    totalPages: 1,
    hasNextPage: false,
    hasPreviousPage: false,
  );

  group('getConsultants', () {
    final testConsultantModels = [
      ConsultantModel(
        id: testConsultantId,
        userId: 'user-1',
        headline: 'Expert Consultant',
        rating: 4.5,
        experience: 5.0,
      ),
      ConsultantModel(
        id: 'consultant-456',
        userId: 'user-2',
        headline: 'Senior Advisor',
        rating: 4.8,
        experience: 10.0,
      ),
    ];

    test('should return paginated list of consultants', () async {
      // Arrange
      when(() => mockRemoteSource.getConsultants(
            filters: any(named: 'filters'),
            page: any(named: 'page'),
            pageSize: any(named: 'pageSize'),
          )).thenAnswer((_) async => (
            consultants: testConsultantModels,
            pagination: testPagination,
          ));

      // Act
      final result = await repository.getConsultants();

      // Assert
      expect(result.items.length, 2);
      expect(result.pagination.totalCount, 2);
      expect(result.items.first.id, testConsultantId);
    });

    test('should pass filters to remote source', () async {
      // Arrange
      const filters = ExploreFilters(
        domainId: 'domain-1',
        minRating: 4.0,
      );
      when(() => mockRemoteSource.getConsultants(
            filters: any(named: 'filters'),
            page: any(named: 'page'),
            pageSize: any(named: 'pageSize'),
          )).thenAnswer((_) async => (
            consultants: testConsultantModels,
            pagination: testPagination,
          ));

      // Act
      await repository.getConsultants(filters: filters, page: 1, pageSize: 10);

      // Assert
      verify(() => mockRemoteSource.getConsultants(
            filters: filters,
            page: 1,
            pageSize: 10,
          )).called(1);
    });

    test('should return empty list when no consultants found', () async {
      // Arrange
      when(() => mockRemoteSource.getConsultants(
            filters: any(named: 'filters'),
            page: any(named: 'page'),
            pageSize: any(named: 'pageSize'),
          )).thenAnswer((_) async => (
            consultants: <ConsultantModel>[],
            pagination: const Pagination(totalCount: 0, totalPages: 0),
          ));

      // Act
      final result = await repository.getConsultants();

      // Assert
      expect(result.items, isEmpty);
      expect(result.isEmpty, true);
    });

    test('should throw ServerException when remote source fails', () async {
      // Arrange
      when(() => mockRemoteSource.getConsultants(
            filters: any(named: 'filters'),
            page: any(named: 'page'),
            pageSize: any(named: 'pageSize'),
          )).thenThrow(const ServerException(
        message: 'Failed to fetch consultants',
        statusCode: 500,
      ));

      // Act & Assert
      expect(
        () => repository.getConsultants(),
        throwsA(isA<ServerException>()),
      );
    });
  });

  group('getConsultantById', () {
    final testDetailsModel = ConsultantDetailsModel(
      id: testConsultantId,
      userId: 'user-1',
      headline: 'Expert Consultant',
      description: 'A very experienced consultant',
      rating: 4.5,
      experience: 5.0,
      languages: ['English', 'Hindi'],
    );

    test('should return ConsultantDetails when found', () async {
      // Arrange
      when(() => mockRemoteSource.getConsultantById(any()))
          .thenAnswer((_) async => testDetailsModel);

      // Act
      final result = await repository.getConsultantById(testConsultantId);

      // Assert
      expect(result, isNotNull);
      expect(result!.id, testConsultantId);
      expect(result.headline, 'Expert Consultant');
      expect(result.languages, contains('English'));
    });

    test('should return null when consultant not found', () async {
      // Arrange
      when(() => mockRemoteSource.getConsultantById(any()))
          .thenAnswer((_) async => null);

      // Act
      final result = await repository.getConsultantById('nonexistent');

      // Assert
      expect(result, isNull);
    });

    test('should throw ServerException on server error', () async {
      // Arrange
      when(() => mockRemoteSource.getConsultantById(any()))
          .thenThrow(const ServerException(
        message: 'Server error',
        statusCode: 500,
      ));

      // Act & Assert
      expect(
        () => repository.getConsultantById(testConsultantId),
        throwsA(isA<ServerException>()),
      );
    });
  });

  group('getConsultantReviews', () {
    final testReviewModels = [
      ReviewModel(
        id: 'review-1',
        rating: 5,
        description: 'Excellent!',
        createdAt: '2024-06-01T00:00:00.000Z',
      ),
      ReviewModel(
        id: 'review-2',
        rating: 4,
        description: 'Very good',
        createdAt: '2024-05-15T00:00:00.000Z',
      ),
    ];

    test('should return paginated reviews', () async {
      // Arrange
      when(() => mockRemoteSource.getConsultantReviews(
            consultantId: any(named: 'consultantId'),
            page: any(named: 'page'),
            pageSize: any(named: 'pageSize'),
          )).thenAnswer((_) async => (
            reviews: testReviewModels,
            pagination: testPagination,
          ));

      // Act
      final result = await repository.getConsultantReviews(
        consultantId: testConsultantId,
      );

      // Assert
      expect(result.items.length, 2);
      expect(result.items.first.id, 'review-1');
      expect(result.items.first.rating, 5);
    });

    test('should pass pagination parameters', () async {
      // Arrange
      when(() => mockRemoteSource.getConsultantReviews(
            consultantId: any(named: 'consultantId'),
            page: any(named: 'page'),
            pageSize: any(named: 'pageSize'),
          )).thenAnswer((_) async => (
            reviews: testReviewModels,
            pagination: testPagination,
          ));

      // Act
      await repository.getConsultantReviews(
        consultantId: testConsultantId,
        page: 2,
        pageSize: 5,
      );

      // Assert
      verify(() => mockRemoteSource.getConsultantReviews(
            consultantId: testConsultantId,
            page: 2,
            pageSize: 5,
          )).called(1);
    });

    test('should return empty reviews when none exist', () async {
      // Arrange
      when(() => mockRemoteSource.getConsultantReviews(
            consultantId: any(named: 'consultantId'),
            page: any(named: 'page'),
            pageSize: any(named: 'pageSize'),
          )).thenAnswer((_) async => (
            reviews: <ReviewModel>[],
            pagination: const Pagination(totalCount: 0, totalPages: 0),
          ));

      // Act
      final result = await repository.getConsultantReviews(
        consultantId: testConsultantId,
      );

      // Assert
      expect(result.items, isEmpty);
    });

    test('should throw when remote source fails', () async {
      // Arrange
      when(() => mockRemoteSource.getConsultantReviews(
            consultantId: any(named: 'consultantId'),
            page: any(named: 'page'),
            pageSize: any(named: 'pageSize'),
          )).thenThrow(const ServerException(
        message: 'Failed to fetch reviews',
        statusCode: 500,
      ));

      // Act & Assert
      expect(
        () => repository.getConsultantReviews(consultantId: testConsultantId),
        throwsA(isA<ServerException>()),
      );
    });
  });
}
