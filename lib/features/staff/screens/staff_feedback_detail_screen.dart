import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../shared/providers/core_providers.dart';
import '../providers/staff_provider.dart';

class StaffFeedbackDetailScreen extends ConsumerStatefulWidget {
  const StaffFeedbackDetailScreen({
    required this.feedbackId,
    super.key,
  });

  final String feedbackId;

  @override
  ConsumerState<StaffFeedbackDetailScreen> createState() =>
      _StaffFeedbackDetailScreenState();
}

class _StaffFeedbackDetailScreenState
    extends ConsumerState<StaffFeedbackDetailScreen> {
  late Future<Map<String, dynamic>> _future;
  bool _isUpdating = false;

  @override
  void initState() {
    super.initState();
    _future = _load();
  }

  Future<Map<String, dynamic>> _load() async {
    final dio = ref.read(dioProvider);
    final response = await dio.get('/api/staff/feedbacks/${widget.feedbackId}');
    return response.data['data'] as Map<String, dynamic>;
  }

  Future<void> _refresh() async {
    final future = _load();
    setState(() => _future = future);
    await future;
  }

  Future<void> _acknowledge() async {
    if (_isUpdating) return;

    setState(() => _isUpdating = true);
    try {
      final dio = ref.read(dioProvider);
      await dio.put(
        '/api/staff/feedbacks/${widget.feedbackId}',
        data: {'status': 'ACKNOWLEDGED'},
      );
      ref.invalidate(staffStatsProvider);
      await _refresh();
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Feedback acknowledged')),
      );
    } finally {
      if (mounted) {
        setState(() => _isUpdating = false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Feedback Detail')),
      body: FutureBuilder<Map<String, dynamic>>(
        future: _future,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError || !snapshot.hasData) {
            return const Center(child: Text('Failed to load feedback'));
          }

          final feedback = snapshot.data!;
          return ListView(
            padding: const EdgeInsets.all(16),
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        feedback['title'] as String? ?? 'Untitled feedback',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      const SizedBox(height: 8),
                      Text(feedback['description'] as String? ?? ''),
                      const SizedBox(height: 12),
                      Text(
                        'Status: ${feedback['status']}'
                        '${feedback['rating'] != null ? ' • Rating ${feedback['rating']}' : ''}',
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              FilledButton(
                onPressed: _isUpdating ? null : _acknowledge,
                child: _isUpdating
                    ? const SizedBox(
                        width: 18,
                        height: 18,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      )
                    : const Text('Mark Acknowledged'),
              ),
            ],
          );
        },
      ),
    );
  }
}
