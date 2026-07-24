import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../domain/entities/announcement/announcement_entity.dart';
import '../../../shared/providers/core_providers.dart';

part 'announcement_provider.g.dart';

@riverpod
Future<List<Announcement>> announcements(AnnouncementsRef ref) async {
  final dio = ref.watch(dioProvider);
  final response = await dio.get('/api/announcements');
  final data = response.data['data'] as List<dynamic>;
  return data
      .map((d) => Announcement.fromJson(d as Map<String, dynamic>))
      .toList();
}
