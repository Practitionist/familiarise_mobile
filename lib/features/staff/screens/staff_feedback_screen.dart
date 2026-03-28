import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../shared/providers/core_providers.dart';

class StaffFeedbackScreen extends ConsumerStatefulWidget {
  const StaffFeedbackScreen({super.key});

  @override
  ConsumerState<StaffFeedbackScreen> createState() =>
      _StaffFeedbackScreenState();
}

class _StaffFeedbackScreenState extends ConsumerState<StaffFeedbackScreen> {
  late Future<List<Map<String, dynamic>>> _future;

  @override
  void initState() {
    super.initState();
    _future = _load();
  }

  Future<List<Map<String, dynamic>>> _load() async {
    final dio = ref.read(dioProvider);
    final response = await dio.get('/api/staff/feedbacks');
    return (response.data['data'] as List<dynamic>)
        .cast<Map<String, dynamic>>();
  }

  Future<void> _refresh() async {
    final future = _load();
    setState(() => _future = future);
    await future;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Feedback Review')),
      body: FutureBuilder<List<Map<String, dynamic>>>(
        future: _future,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return const Center(child: Text('Failed to load feedback'));
          }

          final feedbacks = snapshot.data ?? const [];
          return RefreshIndicator(
            onRefresh: _refresh,
            child: ListView.separated(
              padding: const EdgeInsets.all(16),
              itemCount: feedbacks.length,
              separatorBuilder: (_, __) => const SizedBox(height: 12),
              itemBuilder: (context, index) {
                final feedback = feedbacks[index];
                return Card(
                  child: ListTile(
                    title: Text(
                      feedback['title'] as String? ?? 'Untitled feedback',
                    ),
                    subtitle: Text(
                      '${feedback['status'] ?? 'Unknown'}'
                      '${feedback['rating'] != null ? ' • Rating ${feedback['rating']}' : ''}',
                    ),
                    trailing: const Icon(Icons.chevron_right),
                    onTap: () => context.push(
                      '/staff/feedback/${feedback['id']}',
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
