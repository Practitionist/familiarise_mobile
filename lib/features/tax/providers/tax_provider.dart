import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/utils/sentry_logger.dart';
import '../../../domain/entities/tax/tax_entities.dart';
import '../../../shared/providers/core_providers.dart';

part 'tax_provider.g.dart';

@riverpod
class TaxInfoState extends _$TaxInfoState {
  @override
  Future<ConsultantTaxInfo?> build() async {
    final dio = ref.read(dioProvider);
    final response = await dio.get('/api/consultant/tax-info');
    final data = response.data['data'];
    if (data == null) return null;
    return ConsultantTaxInfo.fromJson(
      data as Map<String, dynamic>,
    );
  }

  Future<void> save(Map<String, dynamic> data) async {
    state = const AsyncLoading();
    try {
      final dio = ref.read(dioProvider);
      final response = await dio.put(
        '/api/consultant/tax-info',
        data: data,
      );
      final result = response.data['data'];
      if (result != null) {
        state = AsyncData(
          ConsultantTaxInfo.fromJson(
            result as Map<String, dynamic>,
          ),
        );
      }
    } catch (e, stack) {
      AppSentryLogger.captureException(e,
          stackTrace: stack, context: 'TaxInfoState.update');
      state = AsyncError(e, stack);
    }
  }
}

@riverpod
Future<List<TDSRecord>> tdsRecords(TdsRecordsRef ref) async {
  final dio = ref.watch(dioProvider);
  final response = await dio.get('/api/consultant/tds-records');
  final data = response.data['data'] as List<dynamic>;
  return data
      .map((d) => TDSRecord.fromJson(d as Map<String, dynamic>))
      .toList();
}
