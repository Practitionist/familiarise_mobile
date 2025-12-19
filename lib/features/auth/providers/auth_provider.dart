import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/errors/failures.dart';
import '../../../domain/entities/auth_state.dart';
import '../../../domain/entities/user.dart';
import '../../../data/repositories/auth_repository_impl.dart';

part 'auth_provider.g.dart';

/// Auth state provider - keeps auth state alive for the app lifetime
@Riverpod(keepAlive: true)
class Auth extends _$Auth {
  @override
  AuthState build() {
    // Listen to auth state changes from the repository
    final repository = ref.watch(authRepositoryProvider);
    repository.authStateChanges.listen((user) {
      if (user != null) {
        state = AuthState.authenticated(user: user);
      } else {
        state = const AuthState.unauthenticated();
      }
    });

    // Initialize by checking current session
    _initializeAuth();
    return const AuthState.initial();
  }

  Future<void> _initializeAuth() async {
    final repository = ref.read(authRepositoryProvider);
    final result = await repository.getCurrentUser();

    result.fold(
      (failure) {
        state = AuthState.unauthenticated(message: failure.displayMessage);
      },
      (user) {
        if (user != null) {
          state = AuthState.authenticated(user: user);
        } else {
          state = const AuthState.unauthenticated();
        }
      },
    );
  }

  /// Sign in with email and password
  Future<void> signInWithEmail({
    required String email,
    required String password,
  }) async {
    state = const AuthState.loading();
    final repository = ref.read(authRepositoryProvider);

    final result = await repository.signInWithEmail(
      email: email,
      password: password,
    );

    result.fold(
      (failure) {
        state = AuthState.unauthenticated(message: failure.displayMessage);
      },
      (user) {
        state = AuthState.authenticated(user: user);
      },
    );
  }

  /// Sign up with email and password
  Future<void> signUpWithEmail({
    required String email,
    required String password,
    String? name,
  }) async {
    state = const AuthState.loading();
    final repository = ref.read(authRepositoryProvider);

    final result = await repository.signUpWithEmail(
      email: email,
      password: password,
      name: name,
    );

    result.fold(
      (failure) {
        state = AuthState.unauthenticated(message: failure.displayMessage);
      },
      (user) {
        state = AuthState.authenticated(user: user);
      },
    );
  }

  /// Sign in with Google
  Future<void> signInWithGoogle() async {
    state = const AuthState.loading();
    final repository = ref.read(authRepositoryProvider);

    final result = await repository.signInWithGoogle();

    result.fold(
      (failure) {
        state = AuthState.unauthenticated(message: failure.displayMessage);
      },
      (user) {
        state = AuthState.authenticated(user: user);
      },
    );
  }

  /// Sign in with GitHub
  Future<void> signInWithGitHub() async {
    state = const AuthState.loading();
    final repository = ref.read(authRepositoryProvider);

    final result = await repository.signInWithGitHub();

    result.fold(
      (failure) {
        state = AuthState.unauthenticated(message: failure.displayMessage);
      },
      (user) {
        state = AuthState.authenticated(user: user);
      },
    );
  }

  /// Sign out
  Future<void> signOut() async {
    state = const AuthState.loading();
    final repository = ref.read(authRepositoryProvider);

    final result = await repository.signOut();

    result.fold(
      (failure) {
        // Still sign out locally even if remote fails
        state = AuthState.unauthenticated(message: failure.displayMessage);
      },
      (_) {
        state = const AuthState.unauthenticated();
      },
    );
  }

  /// Send password reset email
  Future<bool> sendPasswordResetEmail(String email) async {
    final repository = ref.read(authRepositoryProvider);
    final result = await repository.sendPasswordResetEmail(email);

    return result.fold(
      (failure) => false,
      (_) => true,
    );
  }

  /// Clear any error message
  void clearError() {
    if (state.maybeMap(
      unauthenticated: (s) => s.message != null,
      orElse: () => false,
    )) {
      state = const AuthState.unauthenticated();
    }
  }

  /// Refresh user data from repository
  Future<void> refreshUser() async {
    final repository = ref.read(authRepositoryProvider);
    final result = await repository.getCurrentUser();

    result.fold(
      (failure) {
        // Keep current state on failure
      },
      (user) {
        if (user != null) {
          state = AuthState.authenticated(user: user);
        }
      },
    );
  }

  /// Update auth state with a new user object directly
  /// Use this when you have fresh user data (e.g., after onboarding submit)
  void updateUser(User user) {
    state = AuthState.authenticated(user: user);
  }
}

/// Convenience provider to get the current user
@riverpod
User? currentUser(Ref ref) {
  return ref.watch(authProvider).user;
}

/// Convenience provider to check if user is authenticated
@riverpod
bool isAuthenticated(Ref ref) {
  return ref.watch(authProvider).isAuthenticated;
}

/// Convenience provider to check if auth is loading
@riverpod
bool isAuthLoading(Ref ref) {
  return ref.watch(authProvider).isLoading;
}

/// Provider to check if user needs onboarding
@riverpod
bool needsOnboarding(Ref ref) {
  return ref.watch(authProvider).needsOnboarding;
}

/// Auth error message provider
@riverpod
String? authErrorMessage(Ref ref) {
  return ref.watch(authProvider).maybeMap(
    unauthenticated: (s) => s.message,
    orElse: () => null,
  );
}
