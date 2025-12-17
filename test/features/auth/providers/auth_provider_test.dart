import 'dart:async';

import 'package:familiarise_mobile/core/constants/enums.dart';
import 'package:familiarise_mobile/core/errors/failures.dart';
import 'package:familiarise_mobile/data/repositories/auth_repository_impl.dart';
import 'package:familiarise_mobile/domain/entities/auth_state.dart';
import 'package:familiarise_mobile/domain/entities/user.dart';
import 'package:familiarise_mobile/domain/repositories/auth_repository.dart';
import 'package:familiarise_mobile/features/auth/providers/auth_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';

// Mock classes
class MockAuthRepository extends Mock implements AuthRepository {}

void main() {
  late MockAuthRepository mockRepository;
  late ProviderContainer container;

  // Test data
  const testUser = User(
    id: 'user-123',
    email: 'test@example.com',
    name: 'Test User',
    role: UserRole.consultee,
    onboardingCompleted: false,
  );

  setUp(() {
    mockRepository = MockAuthRepository();

    // Setup default stream behavior
    when(() => mockRepository.authStateChanges)
        .thenAnswer((_) => const Stream.empty());

    container = ProviderContainer(
      overrides: [
        authRepositoryProvider.overrideWithValue(mockRepository),
      ],
    );
  });

  tearDown(() {
    container.dispose();
  });

  group('Auth Provider - Initialization', () {
    test('should start with initial state', () async {
      // Arrange
      when(() => mockRepository.getCurrentUser())
          .thenAnswer((_) async => const Right(null));

      // Act
      final state = container.read(authProvider);

      // Assert
      expect(
        state.maybeMap(
          initial: (_) => true,
          orElse: () => false,
        ),
        true,
      );
    });

    test('should transition to authenticated when user session exists',
        () async {
      // Arrange
      when(() => mockRepository.getCurrentUser())
          .thenAnswer((_) async => const Right(testUser));

      // Act - trigger initialization
      container.read(authProvider);

      // Wait for async initialization
      await Future.delayed(const Duration(milliseconds: 100));

      // Assert
      final state = container.read(authProvider);
      expect(state.isAuthenticated, true);
      expect(state.user?.id, testUser.id);
    });

    test('should transition to unauthenticated when no session exists',
        () async {
      // Arrange
      when(() => mockRepository.getCurrentUser())
          .thenAnswer((_) async => const Right(null));

      // Act
      container.read(authProvider);

      // Wait for async initialization
      await Future.delayed(const Duration(milliseconds: 100));

      // Assert
      final state = container.read(authProvider);
      expect(
        state.maybeMap(
          unauthenticated: (_) => true,
          orElse: () => false,
        ),
        true,
      );
    });

    test(
        'should transition to unauthenticated with message when initialization fails',
        () async {
      // Arrange
      when(() => mockRepository.getCurrentUser()).thenAnswer(
          (_) async => const Left(Failure.auth(message: 'Session expired')));

      // Act
      container.read(authProvider);

      // Wait for async initialization
      await Future.delayed(const Duration(milliseconds: 100));

      // Assert
      final state = container.read(authProvider);
      expect(
        state.maybeMap(
          unauthenticated: (s) => s.message,
          orElse: () => null,
        ),
        isNotNull,
      );
    });
  });

  group('Auth Provider - signInWithEmail', () {
    test('should update state to authenticated on successful sign in',
        () async {
      // Arrange
      when(() => mockRepository.getCurrentUser())
          .thenAnswer((_) async => const Right(null));
      when(() => mockRepository.signInWithEmail(
            email: any(named: 'email'),
            password: any(named: 'password'),
          )).thenAnswer((_) async => const Right(testUser));

      // Act
      final notifier = container.read(authProvider.notifier);
      await notifier.signInWithEmail(
        email: 'test@example.com',
        password: 'password123',
      );

      // Assert
      final state = container.read(authProvider);
      expect(state.isAuthenticated, true);
      expect(state.user?.id, testUser.id);
      expect(state.user?.email, testUser.email);
    });

    test('should update state to unauthenticated with message on failure',
        () async {
      // Arrange
      when(() => mockRepository.getCurrentUser())
          .thenAnswer((_) async => const Right(null));
      when(() => mockRepository.signInWithEmail(
            email: any(named: 'email'),
            password: any(named: 'password'),
          )).thenAnswer(
          (_) async => const Left(Failure.auth(message: 'Invalid credentials')));

      // Act
      final notifier = container.read(authProvider.notifier);
      await notifier.signInWithEmail(
        email: 'test@example.com',
        password: 'wrongpassword',
      );

      // Assert
      final state = container.read(authProvider);
      expect(state.isAuthenticated, false);
      expect(
        state.maybeMap(
          unauthenticated: (s) => s.message,
          orElse: () => null,
        ),
        'Invalid credentials',
      );
    });

    test('should show loading state during sign in', () async {
      // Arrange
      final completer = Completer<Result<User>>();
      when(() => mockRepository.getCurrentUser())
          .thenAnswer((_) async => const Right(null));
      when(() => mockRepository.signInWithEmail(
            email: any(named: 'email'),
            password: any(named: 'password'),
          )).thenAnswer((_) => completer.future);

      // Track state changes
      final states = <AuthState>[];
      container.listen(authProvider, (prev, next) {
        states.add(next);
      });

      // Act
      final notifier = container.read(authProvider.notifier);
      final signInFuture = notifier.signInWithEmail(
        email: 'test@example.com',
        password: 'password123',
      );

      // Complete the sign in
      completer.complete(const Right(testUser));
      await signInFuture;

      // Assert - should have transitioned through loading
      expect(states.any((s) => s.isLoading), true);
      // Assert - should end authenticated
      expect(container.read(authProvider).isAuthenticated, true);
    });
  });

  group('Auth Provider - signUpWithEmail', () {
    test('should update state to authenticated on successful sign up',
        () async {
      // Arrange
      when(() => mockRepository.getCurrentUser())
          .thenAnswer((_) async => const Right(null));
      when(() => mockRepository.signUpWithEmail(
            email: any(named: 'email'),
            password: any(named: 'password'),
            name: any(named: 'name'),
          )).thenAnswer((_) async => const Right(testUser));

      // Act
      final notifier = container.read(authProvider.notifier);
      await notifier.signUpWithEmail(
        email: 'test@example.com',
        password: 'password123',
        name: 'Test User',
      );

      // Assert
      final state = container.read(authProvider);
      expect(state.isAuthenticated, true);
      expect(state.user?.name, testUser.name);
    });

    test('should update state to unauthenticated with message on failure',
        () async {
      // Arrange
      when(() => mockRepository.getCurrentUser())
          .thenAnswer((_) async => const Right(null));
      when(() => mockRepository.signUpWithEmail(
            email: any(named: 'email'),
            password: any(named: 'password'),
            name: any(named: 'name'),
          )).thenAnswer((_) async =>
          const Left(Failure.auth(message: 'Email already registered')));

      // Act
      final notifier = container.read(authProvider.notifier);
      await notifier.signUpWithEmail(
        email: 'existing@example.com',
        password: 'password123',
        name: 'Test User',
      );

      // Assert
      final state = container.read(authProvider);
      expect(state.isAuthenticated, false);
      expect(
        state.maybeMap(
          unauthenticated: (s) => s.message,
          orElse: () => null,
        ),
        'Email already registered',
      );
    });
  });

  group('Auth Provider - signInWithGoogle', () {
    test('should update state to authenticated on successful Google sign in',
        () async {
      // Arrange
      when(() => mockRepository.getCurrentUser())
          .thenAnswer((_) async => const Right(null));
      when(() => mockRepository.signInWithGoogle())
          .thenAnswer((_) async => const Right(testUser));

      // Act
      final notifier = container.read(authProvider.notifier);
      await notifier.signInWithGoogle();

      // Assert
      final state = container.read(authProvider);
      expect(state.isAuthenticated, true);
    });

    test('should update state to unauthenticated when Google sign in cancelled',
        () async {
      // Arrange
      when(() => mockRepository.getCurrentUser())
          .thenAnswer((_) async => const Right(null));
      when(() => mockRepository.signInWithGoogle()).thenAnswer(
          (_) async => const Left(Failure.auth(message: 'Sign in cancelled')));

      // Act
      final notifier = container.read(authProvider.notifier);
      await notifier.signInWithGoogle();

      // Assert
      final state = container.read(authProvider);
      expect(state.isAuthenticated, false);
    });
  });

  group('Auth Provider - signInWithGitHub', () {
    test('should update state to authenticated on successful GitHub sign in',
        () async {
      // Arrange
      when(() => mockRepository.getCurrentUser())
          .thenAnswer((_) async => const Right(null));
      when(() => mockRepository.signInWithGitHub())
          .thenAnswer((_) async => const Right(testUser));

      // Act
      final notifier = container.read(authProvider.notifier);
      await notifier.signInWithGitHub();

      // Assert
      final state = container.read(authProvider);
      expect(state.isAuthenticated, true);
    });
  });

  group('Auth Provider - signOut', () {
    test('should update state to unauthenticated on sign out', () async {
      // Arrange
      when(() => mockRepository.getCurrentUser())
          .thenAnswer((_) async => const Right(testUser));
      when(() => mockRepository.signOut())
          .thenAnswer((_) async => const Right(null));

      // Act
      final notifier = container.read(authProvider.notifier);
      await notifier.signOut();

      // Assert
      final state = container.read(authProvider);
      expect(
        state.maybeMap(
          unauthenticated: (_) => true,
          orElse: () => false,
        ),
        true,
      );
    });

    test('should still sign out locally even if remote sign out fails',
        () async {
      // Arrange
      when(() => mockRepository.getCurrentUser())
          .thenAnswer((_) async => const Right(testUser));
      when(() => mockRepository.signOut()).thenAnswer(
          (_) async => const Left(Failure.network(message: 'No connection')));

      // Act
      final notifier = container.read(authProvider.notifier);
      await notifier.signOut();

      // Assert - should still be unauthenticated locally
      final state = container.read(authProvider);
      expect(
        state.maybeMap(
          unauthenticated: (_) => true,
          orElse: () => false,
        ),
        true,
      );
    });
  });

  group('Auth Provider - sendPasswordResetEmail', () {
    test('should return true when email is sent successfully', () async {
      // Arrange
      when(() => mockRepository.getCurrentUser())
          .thenAnswer((_) async => const Right(null));
      when(() => mockRepository.sendPasswordResetEmail(any()))
          .thenAnswer((_) async => const Right(null));

      // Act
      final notifier = container.read(authProvider.notifier);
      final result = await notifier.sendPasswordResetEmail('test@example.com');

      // Assert
      expect(result, true);
      verify(() => mockRepository.sendPasswordResetEmail('test@example.com'))
          .called(1);
    });

    test('should return false when sending email fails', () async {
      // Arrange
      when(() => mockRepository.getCurrentUser())
          .thenAnswer((_) async => const Right(null));
      when(() => mockRepository.sendPasswordResetEmail(any())).thenAnswer(
          (_) async => const Left(Failure.auth(message: 'User not found')));

      // Act
      final notifier = container.read(authProvider.notifier);
      final result = await notifier.sendPasswordResetEmail('unknown@example.com');

      // Assert
      expect(result, false);
    });
  });

  group('Auth Provider - clearError', () {
    test('should clear error message from unauthenticated state', () async {
      // Arrange
      when(() => mockRepository.getCurrentUser())
          .thenAnswer((_) async => const Right(null));
      when(() => mockRepository.signInWithEmail(
            email: any(named: 'email'),
            password: any(named: 'password'),
          )).thenAnswer(
          (_) async => const Left(Failure.auth(message: 'Invalid credentials')));

      // Act - sign in with error
      final notifier = container.read(authProvider.notifier);
      await notifier.signInWithEmail(
        email: 'test@example.com',
        password: 'wrongpassword',
      );

      // Verify error message exists
      expect(
        container.read(authProvider).maybeMap(
              unauthenticated: (s) => s.message,
              orElse: () => null,
            ),
        'Invalid credentials',
      );

      // Act - clear error
      notifier.clearError();

      // Assert - error should be cleared
      expect(
        container.read(authProvider).maybeMap(
              unauthenticated: (s) => s.message,
              orElse: () => null,
            ),
        isNull,
      );
    });
  });

  group('Convenience Providers', () {
    test('currentUser should return user when authenticated', () async {
      // Arrange
      when(() => mockRepository.getCurrentUser())
          .thenAnswer((_) async => const Right(testUser));
      when(() => mockRepository.signInWithEmail(
            email: any(named: 'email'),
            password: any(named: 'password'),
          )).thenAnswer((_) async => const Right(testUser));

      // Act
      await container.read(authProvider.notifier).signInWithEmail(
            email: 'test@example.com',
            password: 'password123',
          );

      // Assert
      final user = container.read(currentUserProvider);
      expect(user?.id, testUser.id);
    });

    test('isAuthenticated should return correct value', () async {
      // Arrange
      when(() => mockRepository.getCurrentUser())
          .thenAnswer((_) async => const Right(null));
      when(() => mockRepository.signInWithEmail(
            email: any(named: 'email'),
            password: any(named: 'password'),
          )).thenAnswer((_) async => const Right(testUser));

      // Before sign in
      container.read(authProvider);
      await Future.delayed(const Duration(milliseconds: 100));
      expect(container.read(isAuthenticatedProvider), false);

      // After sign in
      await container.read(authProvider.notifier).signInWithEmail(
            email: 'test@example.com',
            password: 'password123',
          );
      expect(container.read(isAuthenticatedProvider), true);
    });

    test('isAuthLoading should be false after sign in completes', () async {
      // Arrange
      when(() => mockRepository.getCurrentUser())
          .thenAnswer((_) async => const Right(null));
      when(() => mockRepository.signInWithEmail(
            email: any(named: 'email'),
            password: any(named: 'password'),
          )).thenAnswer((_) async => const Right(testUser));

      // Act
      await container.read(authProvider.notifier).signInWithEmail(
            email: 'test@example.com',
            password: 'password123',
          );

      // Assert - should not be loading after completion
      expect(container.read(isAuthLoadingProvider), false);
      expect(container.read(isAuthenticatedProvider), true);
    });

    test('needsOnboarding should return true when onboarding not completed',
        () async {
      // Arrange
      const userNeedsOnboarding = User(
        id: 'user-123',
        email: 'test@example.com',
        onboardingCompleted: false,
      );
      when(() => mockRepository.getCurrentUser())
          .thenAnswer((_) async => const Right(null));
      when(() => mockRepository.signInWithEmail(
            email: any(named: 'email'),
            password: any(named: 'password'),
          )).thenAnswer((_) async => const Right(userNeedsOnboarding));

      // Act
      await container.read(authProvider.notifier).signInWithEmail(
            email: 'test@example.com',
            password: 'password123',
          );

      // Assert
      expect(container.read(needsOnboardingProvider), true);
    });
  });
}
