import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/errors/failures.dart';
import '../../../data/repositories/auth_repository_impl.dart';

part 'session_management_provider.g.dart';

/// Provider for session management operations
@riverpod
class SessionManagement extends _$SessionManagement {
  @override
  FutureOr<List<Map<String, dynamic>>> build() async {
    final repository = ref.watch(authRepositoryProvider);
    final result = await repository.listSessions();

    return result.fold(
      (failure) => throw Exception(failure.displayMessage),
      (sessions) => sessions,
    );
  }

  /// Revoke a specific session
  Future<bool> revokeSession(String sessionId) async {
    final repository = ref.read(authRepositoryProvider);
    final result = await repository.revokeSession(sessionId);

    return result.fold(
      (failure) => false,
      (_) {
        // Refresh the sessions list
        ref.invalidateSelf();
        return true;
      },
    );
  }

  /// Revoke all other sessions
  Future<bool> revokeOtherSessions() async {
    final repository = ref.read(authRepositoryProvider);
    final result = await repository.revokeOtherSessions();

    return result.fold(
      (failure) => false,
      (_) {
        // Refresh the sessions list
        ref.invalidateSelf();
        return true;
      },
    );
  }
}
