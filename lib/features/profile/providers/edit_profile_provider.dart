import 'dart:async';
import 'dart:typed_data';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/errors/failures.dart';
import '../../../data/repositories/auth_repository_impl.dart';
import '../../../data/repositories/onboarding_repository_impl.dart';
import '../../auth/providers/auth_provider.dart';

part 'edit_profile_provider.g.dart';

@riverpod
class EditProfile extends _$EditProfile {
  @override
  FutureOr<void> build() {}

  /// Save profile updates to the API and sync auth state.
  /// Returns `true` on success.
  Future<bool> saveProfile({
    required String userId,
    String? name,
    String? phone,
    String? bio,
    DateTime? dateOfBirth,
    String? gender,
    String? city,
    String? country,
    String? address,
    String? linkedinUrl,
    String? image,
  }) async {
    state = const AsyncLoading();

    final repository = ref.read(authRepositoryProvider);
    final result = await repository.updateProfile(
      userId: userId,
      name: name,
      phone: phone,
      bio: bio,
      dateOfBirth: dateOfBirth,
      gender: gender,
      city: city,
      country: country,
      address: address,
      linkedinUrl: linkedinUrl,
      image: image,
    );

    return result.fold(
      (failure) {
        state = AsyncError(failure.displayMessage, StackTrace.current);
        return false;
      },
      (updatedUser) {
        ref.read(authProvider.notifier).updateUser(updatedUser);
        state = const AsyncData(null);
        return true;
      },
    );
  }

  /// Upload a profile image via the onboarding repository's upload flow.
  /// Returns the public URL on success, or `null` on failure.
  Future<String?> uploadProfileImage({
    required Uint8List imageBytes,
    required String fileName,
    required String contentType,
  }) async {
    final repository = ref.read(onboardingRepositoryExtendedProvider);
    final result = await repository.uploadProfileImage(
      imageBytes: imageBytes,
      fileName: fileName,
      contentType: contentType,
    );

    return result.fold(
      (failure) => null,
      (url) => url,
    );
  }
}
