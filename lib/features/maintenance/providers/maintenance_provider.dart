import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../shared/providers/core_providers.dart';

part 'maintenance_provider.g.dart';

@riverpod
Future<bool> maintenanceStatus(MaintenanceStatusRef ref) async {
  try {
    final dio = ref.watch(dioProvider);
    final response = await dio.get('/api/maintenance/status');
    return response.data['maintenance'] as bool? ?? false;
  } catch (_) {
    // On error, assume no maintenance (graceful degradation)
    return false;
  }
}
