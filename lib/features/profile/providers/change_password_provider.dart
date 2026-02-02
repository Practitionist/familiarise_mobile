import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/errors/failures.dart';
import '../../../data/repositories/auth_repository_impl.dart';

part 'change_password_provider.g.dart';

@riverpod
class ChangePassword extends _$ChangePassword {
  @override
  FutureOr<void> build() {}

  /// Change the user's password.
  /// Returns `true` on success.
  Future<bool> changePassword({
    required String currentPassword,
    required String newPassword,
  }) async {
    state = const AsyncLoading();

    final repository = ref.read(authRepositoryProvider);
    final result = await repository.changePassword(
      currentPassword: currentPassword,
      newPassword: newPassword,
    );

    return result.fold(
      (failure) {
        state = AsyncError(
          failure.displayMessage,
          StackTrace.current,
        );
        return false;
      },
      (_) {
        state = const AsyncData(null);
        return true;
      },
    );
  }

  /// Set password for OAuth-only users.
  /// Returns `true` on success.
  Future<bool> setPassword({required String newPassword}) async {
    state = const AsyncLoading();

    final repository = ref.read(authRepositoryProvider);
    final result = await repository.setPassword(newPassword);

    return result.fold(
      (failure) {
        state = AsyncError(
          failure.displayMessage,
          StackTrace.current,
        );
        return false;
      },
      (_) {
        state = const AsyncData(null);
        return true;
      },
    );
  }
}
