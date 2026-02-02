import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/errors/failures.dart';
import '../../../data/repositories/auth_repository_impl.dart';
import '../../auth/providers/auth_provider.dart';

part 'delete_account_provider.g.dart';

@riverpod
class DeleteAccount extends _$DeleteAccount {
  @override
  FutureOr<void> build() {}

  /// Delete the current user's account.
  /// Signs out automatically on success.
  /// Returns `true` on success.
  Future<bool> deleteAccount() async {
    state = const AsyncLoading();

    final repository = ref.read(authRepositoryProvider);
    final result = await repository.deleteAccount();

    return result.fold(
      (failure) {
        state = AsyncError(
          failure.displayMessage,
          StackTrace.current,
        );
        return false;
      },
      (_) {
        // Trigger sign-out in auth state
        ref.read(authProvider.notifier).signOut();
        state = const AsyncData(null);
        return true;
      },
    );
  }
}
