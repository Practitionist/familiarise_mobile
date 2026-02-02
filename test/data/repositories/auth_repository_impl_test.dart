import 'dart:async';

import 'package:familiarise_mobile/core/errors/exceptions.dart';
import 'package:familiarise_mobile/core/errors/failures.dart';
import 'package:familiarise_mobile/core/network/network_info.dart';
import 'package:familiarise_mobile/data/datasources/local/auth_local_source.dart';
import 'package:familiarise_mobile/data/datasources/remote/auth_remote_source.dart';
import 'package:familiarise_mobile/data/models/user_model.dart';
import 'package:familiarise_mobile/data/repositories/auth_repository_impl.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

// Mock classes
class MockAuthRemoteSource extends Mock implements AuthRemoteSource {}

class MockAuthLocalSource extends Mock implements AuthLocalSource {}

class MockNetworkInfo extends Mock implements NetworkInfo {}

void main() {
  late AuthRepositoryImpl repository;
  late MockAuthRemoteSource mockRemoteSource;
  late MockAuthLocalSource mockLocalSource;
  late MockNetworkInfo mockNetworkInfo;

  setUp(() {
    mockRemoteSource = MockAuthRemoteSource();
    mockLocalSource = MockAuthLocalSource();
    mockNetworkInfo = MockNetworkInfo();

    repository = AuthRepositoryImpl(
      remoteSource: mockRemoteSource,
      localSource: mockLocalSource,
      networkInfo: mockNetworkInfo,
    );
  });

  // Test data
  const testEmail = 'test@example.com';
  const testPassword = 'password123';
  const testName = 'Test User';
  const testUserId = 'user-123';

  final testUserModel = UserModel(
    id: testUserId,
    email: testEmail,
    name: testName,
    createdAt: DateTime(2024, 1, 1),
  );

  group('signInWithEmail', () {
    test('should return User when sign in is successful', () async {
      // Arrange
      when(() => mockNetworkInfo.isConnected).thenAnswer((_) async => true);
      when(() => mockRemoteSource.signInWithEmail(testEmail, testPassword))
          .thenAnswer((_) async => testUserModel);
      when(() => mockLocalSource.saveUserId(testUserId))
          .thenAnswer((_) async {});

      // Act
      final result = await repository.signInWithEmail(
        email: testEmail,
        password: testPassword,
      );

      // Assert
      expect(result.isRight(), true);
      result.fold(
        (failure) => fail('Expected Right but got Left: $failure'),
        (user) {
          expect(user.id, testUserId);
          expect(user.email, testEmail);
          expect(user.name, testName);
        },
      );
      verify(() => mockRemoteSource.signInWithEmail(testEmail, testPassword))
          .called(1);
      verify(() => mockLocalSource.saveUserId(testUserId)).called(1);
    });

    test('should return NetworkFailure when no internet connection', () async {
      // Arrange
      when(() => mockNetworkInfo.isConnected).thenAnswer((_) async => false);

      // Act
      final result = await repository.signInWithEmail(
        email: testEmail,
        password: testPassword,
      );

      // Assert
      expect(result.isLeft(), true);
      result.fold(
        (failure) => expect(failure, isA<NetworkFailure>()),
        (user) => fail('Expected Left but got Right'),
      );
      verifyNever(
          () => mockRemoteSource.signInWithEmail(testEmail, testPassword));
    });

    test('should return AuthFailure when AuthException is thrown', () async {
      // Arrange
      when(() => mockNetworkInfo.isConnected).thenAnswer((_) async => true);
      when(() => mockRemoteSource.signInWithEmail(testEmail, testPassword))
          .thenThrow(const AuthException(message: 'Invalid credentials'));

      // Act
      final result = await repository.signInWithEmail(
        email: testEmail,
        password: testPassword,
      );

      // Assert
      expect(result.isLeft(), true);
      result.fold(
        (failure) {
          expect(failure, isA<AuthFailure>());
          expect((failure as AuthFailure).message, 'Invalid credentials');
        },
        (user) => fail('Expected Left but got Right'),
      );
    });

    test('should return ServerFailure when ServerException is thrown',
        () async {
      // Arrange
      when(() => mockNetworkInfo.isConnected).thenAnswer((_) async => true);
      when(() => mockRemoteSource.signInWithEmail(testEmail, testPassword))
          .thenThrow(
              const ServerException(message: 'Server error', statusCode: 500));

      // Act
      final result = await repository.signInWithEmail(
        email: testEmail,
        password: testPassword,
      );

      // Assert
      expect(result.isLeft(), true);
      result.fold(
        (failure) {
          expect(failure, isA<ServerFailure>());
          expect((failure as ServerFailure).statusCode, 500);
        },
        (user) => fail('Expected Left but got Right'),
      );
    });
  });

  group('signUpWithEmail', () {
    test('should return User when sign up is successful', () async {
      // Arrange
      when(() => mockNetworkInfo.isConnected).thenAnswer((_) async => true);
      when(() =>
              mockRemoteSource.signUpWithEmail(testEmail, testPassword, testName))
          .thenAnswer((_) async => testUserModel);
      when(() => mockLocalSource.saveUserId(testUserId))
          .thenAnswer((_) async {});

      // Act
      final result = await repository.signUpWithEmail(
        email: testEmail,
        password: testPassword,
        name: testName,
      );

      // Assert
      expect(result.isRight(), true);
      result.fold(
        (failure) => fail('Expected Right but got Left: $failure'),
        (user) {
          expect(user.id, testUserId);
          expect(user.email, testEmail);
        },
      );
    });

    test('should return NetworkFailure when no internet connection', () async {
      // Arrange
      when(() => mockNetworkInfo.isConnected).thenAnswer((_) async => false);

      // Act
      final result = await repository.signUpWithEmail(
        email: testEmail,
        password: testPassword,
        name: testName,
      );

      // Assert
      expect(result.isLeft(), true);
      result.fold(
        (failure) => expect(failure, isA<NetworkFailure>()),
        (user) => fail('Expected Left but got Right'),
      );
    });

    test('should return AuthFailure when email already exists', () async {
      // Arrange
      when(() => mockNetworkInfo.isConnected).thenAnswer((_) async => true);
      when(() =>
              mockRemoteSource.signUpWithEmail(testEmail, testPassword, testName))
          .thenThrow(
              const AuthException(message: 'Email already registered'));

      // Act
      final result = await repository.signUpWithEmail(
        email: testEmail,
        password: testPassword,
        name: testName,
      );

      // Assert
      expect(result.isLeft(), true);
      result.fold(
        (failure) {
          expect(failure, isA<AuthFailure>());
        },
        (user) => fail('Expected Left but got Right'),
      );
    });
  });

  group('signInWithGoogle', () {
    test('should return User when Google sign in is successful', () async {
      // Arrange
      when(() => mockNetworkInfo.isConnected).thenAnswer((_) async => true);
      when(() => mockRemoteSource.signInWithGoogle())
          .thenAnswer((_) async => testUserModel);
      when(() => mockLocalSource.saveUserId(testUserId))
          .thenAnswer((_) async {});

      // Act
      final result = await repository.signInWithGoogle();

      // Assert
      expect(result.isRight(), true);
      result.fold(
        (failure) => fail('Expected Right but got Left: $failure'),
        (user) => expect(user.id, testUserId),
      );
    });

    test('should return NetworkFailure when no internet connection', () async {
      // Arrange
      when(() => mockNetworkInfo.isConnected).thenAnswer((_) async => false);

      // Act
      final result = await repository.signInWithGoogle();

      // Assert
      expect(result.isLeft(), true);
      result.fold(
        (failure) => expect(failure, isA<NetworkFailure>()),
        (user) => fail('Expected Left but got Right'),
      );
    });

    test('should return AuthFailure when Google sign in is cancelled',
        () async {
      // Arrange
      when(() => mockNetworkInfo.isConnected).thenAnswer((_) async => true);
      when(() => mockRemoteSource.signInWithGoogle())
          .thenThrow(const AuthException(message: 'Google sign in cancelled'));

      // Act
      final result = await repository.signInWithGoogle();

      // Assert
      expect(result.isLeft(), true);
      result.fold(
        (failure) {
          expect(failure, isA<AuthFailure>());
          expect(
              (failure as AuthFailure).message, 'Google sign in cancelled');
        },
        (user) => fail('Expected Left but got Right'),
      );
    });
  });

  group('signInWithGitHub', () {
    test('should return User when GitHub sign in is successful', () async {
      // Arrange
      when(() => mockNetworkInfo.isConnected).thenAnswer((_) async => true);
      when(() => mockRemoteSource.signInWithGitHub())
          .thenAnswer((_) async => testUserModel);
      when(() => mockLocalSource.saveUserId(testUserId))
          .thenAnswer((_) async {});

      // Act
      final result = await repository.signInWithGitHub();

      // Assert
      expect(result.isRight(), true);
      result.fold(
        (failure) => fail('Expected Right but got Left: $failure'),
        (user) => expect(user.id, testUserId),
      );
    });

    test('should return NetworkFailure when no internet connection', () async {
      // Arrange
      when(() => mockNetworkInfo.isConnected).thenAnswer((_) async => false);

      // Act
      final result = await repository.signInWithGitHub();

      // Assert
      expect(result.isLeft(), true);
      result.fold(
        (failure) => expect(failure, isA<NetworkFailure>()),
        (user) => fail('Expected Left but got Right'),
      );
    });
  });

  group('signOut', () {
    test('should clear local data and sign out from remote', () async {
      // Arrange
      when(() => mockRemoteSource.signOut()).thenAnswer((_) async {});
      when(() => mockLocalSource.clearAll()).thenAnswer((_) async {});

      // Act
      final result = await repository.signOut();

      // Assert
      expect(result.isRight(), true);
      verify(() => mockRemoteSource.signOut()).called(1);
      verify(() => mockLocalSource.clearAll()).called(1);
    });

    test('should return UnknownFailure when sign out fails', () async {
      // Arrange
      when(() => mockRemoteSource.signOut())
          .thenThrow(Exception('Sign out failed'));

      // Act
      final result = await repository.signOut();

      // Assert
      expect(result.isLeft(), true);
      result.fold(
        (failure) => expect(failure, isA<UnknownFailure>()),
        (_) => fail('Expected Left but got Right'),
      );
    });
  });

  group('getCurrentUser', () {
    test('should return User when session exists', () async {
      // Arrange
      when(() => mockRemoteSource.getCurrentUser())
          .thenAnswer((_) async => testUserModel);

      // Act
      final result = await repository.getCurrentUser();

      // Assert
      expect(result.isRight(), true);
      result.fold(
        (failure) => fail('Expected Right but got Left: $failure'),
        (user) {
          expect(user, isNotNull);
          expect(user!.id, testUserId);
        },
      );
    });

    test('should return null when no session exists', () async {
      // Arrange
      when(() => mockRemoteSource.getCurrentUser())
          .thenAnswer((_) async => null);

      // Act
      final result = await repository.getCurrentUser();

      // Assert
      expect(result.isRight(), true);
      result.fold(
        (failure) => fail('Expected Right but got Left: $failure'),
        (user) => expect(user, isNull),
      );
    });
  });

  group('forgotPassword', () {
    test('should return success when email is sent', () async {
      // Arrange
      when(() => mockNetworkInfo.isConnected).thenAnswer((_) async => true);
      when(() => mockRemoteSource.forgotPassword(testEmail))
          .thenAnswer((_) async {});

      // Act
      final result = await repository.forgotPassword(testEmail);

      // Assert
      expect(result.isRight(), true);
    });

    test('should return NetworkFailure when no internet connection', () async {
      // Arrange
      when(() => mockNetworkInfo.isConnected).thenAnswer((_) async => false);

      // Act
      final result = await repository.forgotPassword(testEmail);

      // Assert
      expect(result.isLeft(), true);
      result.fold(
        (failure) => expect(failure, isA<NetworkFailure>()),
        (_) => fail('Expected Left but got Right'),
      );
    });
  });

  group('authStateChanges', () {
    test('should emit user when auth state changes', () async {
      // Arrange
      final controller = StreamController<UserModel?>();
      when(() => mockRemoteSource.authStateChanges)
          .thenAnswer((_) => controller.stream);

      // Act
      final stream = repository.authStateChanges;

      // Assert
      expectLater(
        stream,
        emitsInOrder([
          isA<dynamic>().having((u) => u?.id, 'id', testUserId),
          isNull,
        ]),
      );

      // Emit events
      controller.add(testUserModel);
      controller.add(null);

      await controller.close();
    });
  });
}
