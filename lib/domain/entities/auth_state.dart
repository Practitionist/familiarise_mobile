import 'package:freezed_annotation/freezed_annotation.dart';

import 'user.dart';

part 'auth_state.freezed.dart';

/// Authentication state representing the current auth status
@freezed
class AuthState with _$AuthState {
  /// Initial state when app starts
  const factory AuthState.initial() = AuthStateInitial;

  /// Loading state during auth operations
  const factory AuthState.loading() = AuthStateLoading;

  /// Authenticated state with user data
  const factory AuthState.authenticated({
    required User user,
    String? accessToken,
  }) = AuthStateAuthenticated;

  /// Unauthenticated state (logged out or error)
  const factory AuthState.unauthenticated({
    String? message,
  }) = AuthStateUnauthenticated;

  const AuthState._();

  /// Check if user is authenticated
  bool get isAuthenticated => this is AuthStateAuthenticated;

  /// Check if auth is loading
  bool get isLoading => this is AuthStateLoading;

  /// Get current user if authenticated
  User? get user => mapOrNull(
        authenticated: (state) => state.user,
      );

  /// Check if user needs onboarding
  bool get needsOnboarding =>
      isAuthenticated && !(user?.onboardingCompleted ?? false);
}
