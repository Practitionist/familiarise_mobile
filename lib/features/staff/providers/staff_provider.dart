import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../shared/providers/core_providers.dart';

part 'staff_provider.g.dart';

@riverpod
Future<Map<String, int>> staffStats(Ref ref) async {
  final dio = ref.watch(dioProvider);
  final response = await dio.get('/api/staff/stats');
  final data = response.data['data'] as Map<String, dynamic>;
  return data.map((k, v) => MapEntry(k, (v as num).toInt()));
}

@riverpod
Future<List<Map<String, dynamic>>> staffTickets(Ref ref) async {
  final dio = ref.watch(dioProvider);
  final response = await dio.get('/api/staff/support-tickets');
  return (response.data['data'] as List<dynamic>)
      .cast<Map<String, dynamic>>();
}

@riverpod
Future<List<Map<String, dynamic>>> pendingVerifications(
  Ref ref,
) async {
  final dio = ref.watch(dioProvider);
  final response =
      await dio.get('/api/staff/moderation/profiles');
  return (response.data['data'] as List<dynamic>)
      .cast<Map<String, dynamic>>();
}
