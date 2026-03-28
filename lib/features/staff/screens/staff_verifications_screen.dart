import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../shared/providers/core_providers.dart';

class StaffVerificationsScreen extends ConsumerStatefulWidget {
  const StaffVerificationsScreen({super.key});

  @override
  ConsumerState<StaffVerificationsScreen> createState() =>
      _StaffVerificationsScreenState();
}

class _StaffVerificationsScreenState
    extends ConsumerState<StaffVerificationsScreen> {
  late Future<List<Map<String, dynamic>>> _future;

  @override
  void initState() {
    super.initState();
    _future = _load();
  }

  Future<List<Map<String, dynamic>>> _load() async {
    final dio = ref.read(dioProvider);
    final response = await dio.get('/api/staff/moderation/profiles');
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
      appBar: AppBar(title: const Text('Verifications')),
      body: FutureBuilder<List<Map<String, dynamic>>>(
        future: _future,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Center(child: Text('Failed to load verifications'));
          }

          final verifications = snapshot.data ?? const [];
          if (verifications.isEmpty) {
            return RefreshIndicator(
              onRefresh: _refresh,
              child: ListView(
                children: [
                  const SizedBox(height: 160),
                  const Center(
                    child: Text('No pending verifications'),
                  ),
                ],
              ),
            );
          }

          return RefreshIndicator(
            onRefresh: _refresh,
            child: ListView.separated(
              padding: const EdgeInsets.all(16),
              itemCount: verifications.length,
              separatorBuilder: (_, __) => const SizedBox(height: 12),
              itemBuilder: (context, index) {
                final verification = verifications[index];
                final consultantName =
                    verification['consultantName'] as String? ??
                        verification['consultantProfileId'] as String? ??
                        'Unknown consultant';
                return Card(
                  child: ListTile(
                    title: Text(consultantName),
                    subtitle: Text(
                      verification['notes'] as String? ?? 'No notes provided',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    trailing: const Icon(Icons.chevron_right),
                    onTap: () => context.push(
                      '/staff/verifications/${verification['id']}',
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
