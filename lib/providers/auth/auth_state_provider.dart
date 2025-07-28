import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../models/auth/user_model.dart';
import '../../models/auth/login_request.dart';
import '../../models/auth/register_request.dart';
import '../../repositories/auth_repository.dart';
import '../../services/auth_service.dart';
import '../../services/logging_service.dart';

@immutable
class AuthState {
  final User? user;
  final bool isLoading;
  final bool isAuthenticated;
  final String? error;
  final bool isInitialized;

  const AuthState({
    this.user,
    this.isLoading = false,
    this.isAuthenticated = false,
    this.error,
    this.isInitialized = false,
  });

  AuthState copyWith({
    User? user,
    bool? isLoading,
    bool? isAuthenticated,
    String? error,
    bool? isInitialized,
  }) {
    return AuthState(
      user: user ?? this.user,
      isLoading: isLoading ?? this.isLoading,
      isAuthenticated: isAuthenticated ?? this.isAuthenticated,
      error: error,
      isInitialized: isInitialized ?? this.isInitialized,
    );
  }

  AuthState clearError() {
    return copyWith(error: null);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is AuthState &&
        other.user == user &&
        other.isLoading == isLoading &&
        other.isAuthenticated == isAuthenticated &&
        other.error == error &&
        other.isInitialized == isInitialized;
  }

  @override
  int get hashCode {
    return Object.hash(user, isLoading, isAuthenticated, error, isInitialized);
  }

  @override
  String toString() {
    return 'AuthState(user: $user, isLoading: $isLoading, isAuthenticated: $isAuthenticated, error: $error, isInitialized: $isInitialized)';
  }
}

class AuthNotifier extends StateNotifier<AuthState> {
  AuthNotifier(this._authRepository) : super(const AuthState()) {
    _initialize();
  }

  final AuthRepository _authRepository;

  Future<void> _initialize() async {
    state = state.copyWith(isLoading: true);
    try {
      await _checkAuthStatus();
      state = state.copyWith(isInitialized: true, isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isInitialized: true,
        isLoading: false,
        error: e.toString(),
      );
    }
  }

  // Public method to re-initialize authentication (useful for app startup)
  Future<void> initializeAuth() async {
    logger.info('Auth: Initializing authentication state');
    state = state.copyWith(isLoading: true, error: null);
    try {
      await _checkAuthStatus();
      state = state.copyWith(isInitialized: true, isLoading: false);
      logger.info('Auth: Initialization complete - authenticated: ${state.isAuthenticated}');
    } catch (e) {
      logger.error('Auth: Initialization failed', e);
      state = state.copyWith(
        isInitialized: true,
        isLoading: false,
        isAuthenticated: false,
        user: null,
        error: 'Failed to initialize authentication',
      );
    }
  }

  Future<void> _checkAuthStatus() async {
    try {
      final isAuthenticated = await _authRepository.isAuthenticated();
      if (isAuthenticated) {
        final user = await _authRepository.getCurrentUser();
        state = state.copyWith(
          user: user,
          isAuthenticated: user != null,
          error: null,
        );
      } else {
        state = state.copyWith(
          user: null,
          isAuthenticated: false,
          error: null,
        );
      }
    } catch (e) {
      state = state.copyWith(
        isAuthenticated: false,
        user: null,
        error: e.toString(),
      );
    }
  }

  Future<void> login(String email, String password) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final request = LoginRequest(email: email, password: password);
      final response = await _authRepository.login(request);
      
      state = state.copyWith(
        user: response.user,
        isAuthenticated: true,
        isLoading: false,
        error: null,
      );
    } on AuthException catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: e.message,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: 'An unexpected error occurred',
      );
    }
  }

  Future<void> register(RegisterRequest request) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final response = await _authRepository.register(request);
      
      state = state.copyWith(
        user: response.user,
        isAuthenticated: true,
        isLoading: false,
        error: null,
      );
    } on AuthException catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: e.message,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: 'An unexpected error occurred',
      );
    }
  }

  Future<void> logout() async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      await _authRepository.logout();
      state = const AuthState(isInitialized: true);
    } on AuthException catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: e.message,
      );
    } catch (e) {
      // Even if logout fails on server, clear local state
      state = const AuthState(isInitialized: true);
    }
  }

  Future<void> refreshUser() async {
    if (!state.isAuthenticated) return;
    
    try {
      final user = await _authRepository.getCurrentUser();
      if (user != null) {
        state = state.copyWith(user: user, error: null);
      }
    } catch (e) {
      // If refresh fails, don't change authentication status
      // The token might still be valid
      state = state.copyWith(error: null);
    }
  }

  Future<void> forgotPassword(String email) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      await _authRepository.forgotPassword(email);
      state = state.copyWith(isLoading: false, error: null);
    } on AuthException catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: e.message,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: 'Failed to send password reset email',
      );
    }
  }

  Future<void> resetPassword({
    required String token,
    required String newPassword,
  }) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      await _authRepository.resetPassword(
        token: token,
        newPassword: newPassword,
      );
      state = state.copyWith(isLoading: false, error: null);
    } on AuthException catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: e.message,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: 'Failed to reset password',
      );
    }
  }

  Future<void> changePassword({
    required String currentPassword,
    required String newPassword,
  }) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      await _authRepository.changePassword(
        currentPassword: currentPassword,
        newPassword: newPassword,
      );
      state = state.copyWith(isLoading: false, error: null);
    } on AuthException catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: e.message,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: 'Failed to change password',
      );
    }
  }

  Future<void> verifyEmail(String token) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      await _authRepository.verifyEmail(token);
      // Refresh user data to get updated email verification status
      await refreshUser();
      state = state.copyWith(isLoading: false, error: null);
    } on AuthException catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: e.message,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: 'Failed to verify email',
      );
    }
  }

  Future<void> resendEmailVerification() async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      await _authRepository.resendEmailVerification();
      state = state.copyWith(isLoading: false, error: null);
    } on AuthException catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: e.message,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: 'Failed to resend verification email',
      );
    }
  }

  void clearError() {
    state = state.clearError();
  }

  // OAuth Methods
  Future<void> signInWithGoogle() async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final response = await _authRepository.signInWithGoogle();
      
      state = state.copyWith(
        user: response.user,
        isAuthenticated: true,
        isLoading: false,
        error: null,
      );
    } on AuthException catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: e.message,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: 'Google sign-in failed',
      );
    }
  }

  Future<void> signInWithFacebook() async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final response = await _authRepository.signInWithFacebook();
      
      state = state.copyWith(
        user: response.user,
        isAuthenticated: true,
        isLoading: false,
        error: null,
      );
    } on AuthException catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: e.message,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: 'Facebook sign-in failed',
      );
    }
  }

  Future<void> signInWithGitHub() async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final response = await _authRepository.signInWithGitHub();
      
      state = state.copyWith(
        user: response.user,
        isAuthenticated: true,
        isLoading: false,
        error: null,
      );
    } on AuthException catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: e.message,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: 'GitHub sign-in failed',
      );
    }
  }

  /// Sign out the current user
  Future<void> signOut() async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      await _authRepository.logout();
      state = const AuthState(); // Reset to initial state
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: 'Failed to sign out',
      );
    }
  }
}

// Providers
final authRepositoryProvider = Provider<AuthRepository>((ref) {
  return AuthRepositoryImpl();
});

final authProvider = StateNotifierProvider<AuthNotifier, AuthState>((ref) {
  final authRepository = ref.read(authRepositoryProvider);
  return AuthNotifier(authRepository);
});

// Computed providers
final currentUserProvider = Provider<User?>((ref) {
  return ref.watch(authProvider).user;
});

final isAuthenticatedProvider = Provider<bool>((ref) {
  return ref.watch(authProvider).isAuthenticated;
});

final isLoadingProvider = Provider<bool>((ref) {
  return ref.watch(authProvider).isLoading;
});

final authErrorProvider = Provider<String?>((ref) {
  return ref.watch(authProvider).error;
});

final isInitializedProvider = Provider<bool>((ref) {
  return ref.watch(authProvider).isInitialized;
});

// Selector providers for specific user properties
final userRoleProvider = Provider<UserRole?>((ref) {
  return ref.watch(authProvider).user?.role;
});

final userEmailProvider = Provider<String?>((ref) {
  return ref.watch(authProvider).user?.email;
});

final userNameProvider = Provider<String?>((ref) {
  return ref.watch(authProvider).user?.name;
});

final isEmailVerifiedProvider = Provider<bool>((ref) {
  return ref.watch(authProvider).user?.emailVerified != null;
});