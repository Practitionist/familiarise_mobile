import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../shared/providers/core_providers.dart';

class StaffTicketsScreen extends ConsumerStatefulWidget {
  const StaffTicketsScreen({super.key});

  @override
  ConsumerState<StaffTicketsScreen> createState() => _StaffTicketsScreenState();
}

class _StaffTicketsScreenState extends ConsumerState<StaffTicketsScreen> {
  late Future<List<Map<String, dynamic>>> _future;

  @override
  void initState() {
    super.initState();
    _future = _load();
  }

  Future<List<Map<String, dynamic>>> _load() async {
    final dio = ref.read(dioProvider);
    final response = await dio.get('/api/staff/support-tickets');
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
      appBar: AppBar(title: const Text('Support Tickets')),
      body: FutureBuilder<List<Map<String, dynamic>>>(
        future: _future,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return const Center(child: Text('Failed to load tickets'));
          }

          final tickets = snapshot.data ?? const [];
          return RefreshIndicator(
            onRefresh: _refresh,
            child: ListView.separated(
              padding: const EdgeInsets.all(16),
              itemCount: tickets.length,
              separatorBuilder: (_, __) => const SizedBox(height: 12),
              itemBuilder: (context, index) {
                final ticket = tickets[index];
                return Card(
                  child: ListTile(
                    title: Text(
                      ticket['title'] as String? ?? 'Untitled ticket',
                    ),
                    subtitle: Text(
                      '${ticket['status'] ?? 'Unknown'} • ${ticket['priority'] ?? 'MEDIUM'}',
                    ),
                    trailing: const Icon(Icons.chevron_right),
                    onTap: () => context.push(
                      '/staff/tickets/${ticket['id']}',
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
