import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/utils/sentry_logger.dart';
import '../../../data/datasources/remote/document_remote_source.dart';
import '../../../domain/entities/document/document_entities.dart';

part 'document_provider.g.dart';

@riverpod
class AppointmentDocuments extends _$AppointmentDocuments {
  @override
  Future<List<AppointmentDocument>> build(String appointmentId) async {
    final source = ref.read(documentRemoteSourceProvider);
    return source.getDocuments(appointmentId);
  }

  Future<void> refresh(String appointmentId) async {
    state = const AsyncLoading();
    try {
      final source = ref.read(documentRemoteSourceProvider);
      state = AsyncData(await source.getDocuments(appointmentId));
    } catch (e, stack) {
      AppSentryLogger.captureException(e,
          stackTrace: stack, context: 'AppointmentDocuments.refresh');
      state = AsyncError(e, stack);
    }
  }
}
