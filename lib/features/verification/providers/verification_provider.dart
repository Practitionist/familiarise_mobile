import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/utils/sentry_logger.dart';
import '../../../data/datasources/remote/verification_remote_source.dart';
import '../../../domain/entities/verification/verification_entities.dart';

part 'verification_provider.g.dart';

/// Provider for the current verification status
@riverpod
class VerificationState extends _$VerificationState {
  @override
  Future<VerificationRequest?> build() async {
    final source = ref.read(verificationRemoteSourceProvider);
    return source.getStatus();
  }

  /// Submit a new verification request
  Future<void> submit({String? notes}) async {
    state = const AsyncLoading();
    try {
      final source = ref.read(verificationRemoteSourceProvider);
      final result = await source.submit(notes: notes);
      state = AsyncData(result);
    } catch (e, stack) {
      AppSentryLogger.captureException(
        e,
        stackTrace: stack,
        context: 'VerificationState.submit',
      );
      state = AsyncError(e, stack);
      rethrow;
    }
  }

  /// Resubmit after rejection
  Future<void> resubmit({String? notes}) async {
    state = const AsyncLoading();
    try {
      final source = ref.read(verificationRemoteSourceProvider);
      final result = await source.resubmit(notes: notes);
      state = AsyncData(result);
    } catch (e, stack) {
      AppSentryLogger.captureException(
        e,
        stackTrace: stack,
        context: 'VerificationState.resubmit',
      );
      state = AsyncError(e, stack);
      rethrow;
    }
  }

  /// Refresh the verification status
  Future<void> refresh() async {
    state = const AsyncLoading();
    try {
      final source = ref.read(verificationRemoteSourceProvider);
      final result = await source.getStatus();
      state = AsyncData(result);
    } catch (e, stack) {
      AppSentryLogger.captureException(
        e,
        stackTrace: stack,
        context: 'VerificationState.refresh',
      );
      state = AsyncError(e, stack);
    }
  }
}

/// Provider for verification documents
@riverpod
class VerificationDocuments extends _$VerificationDocuments {
  @override
  Future<List<VerificationDocument>> build() async {
    final source = ref.read(verificationRemoteSourceProvider);
    return source.getDocuments();
  }

  /// Add a document to the current verification
  Future<void> addDocument({
    required String fileName,
    required String originalName,
    required int fileSize,
    required String mimeType,
    required String fileUrl,
    required String storagePath,
    String? description,
  }) async {
    try {
      final source = ref.read(verificationRemoteSourceProvider);
      final doc = await source.addDocument(
        fileName: fileName,
        originalName: originalName,
        fileSize: fileSize,
        mimeType: mimeType,
        fileUrl: fileUrl,
        storagePath: storagePath,
        description: description,
      );
      final current = state.valueOrNull ?? [];
      state = AsyncData([...current, doc]);
    } catch (e, stack) {
      AppSentryLogger.captureException(
        e,
        stackTrace: stack,
        context: 'VerificationDocuments.addDocument',
      );
      rethrow;
    }
  }
}
