import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../shared/providers/core_providers.dart';
import '../providers/staff_provider.dart';

class StaffVerificationDetailScreen extends ConsumerStatefulWidget {
  const StaffVerificationDetailScreen({
    required this.verificationId,
    super.key,
  });

  final String verificationId;

  @override
  ConsumerState<StaffVerificationDetailScreen> createState() =>
      _StaffVerificationDetailScreenState();
}

class _StaffVerificationDetailScreenState
    extends ConsumerState<StaffVerificationDetailScreen> {
  late Future<Map<String, dynamic>> _future;
  final _reviewNotesController = TextEditingController();
  bool _isSubmitting = false;

  @override
  void initState() {
    super.initState();
    _future = _load();
  }

  @override
  void dispose() {
    _reviewNotesController.dispose();
    super.dispose();
  }

  Future<Map<String, dynamic>> _load() async {
    final dio = ref.read(dioProvider);
    final response = await dio
        .get('/api/staff/moderation/profiles/${widget.verificationId}');
    return response.data['data'] as Map<String, dynamic>;
  }

  Future<void> _refresh() async {
    final future = _load();
    setState(() => _future = future);
    await future;
  }

  Future<void> _approve() async {
    if (_isSubmitting) return;

    setState(() => _isSubmitting = true);
    try {
      final reviewNotes = _reviewNotesController.text.trim();
      final dio = ref.read(dioProvider);
      await dio.put(
        '/api/staff/moderation/profiles/${widget.verificationId}',
        data: {
          'status': 'APPROVED',
          'reviewNotes': reviewNotes,
          'feedbackDetails': reviewNotes,
        },
      );
      ref.invalidate(staffStatsProvider);
      ref.invalidate(pendingVerificationsProvider);
      await _refresh();
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Verification approved')),
      );
    } finally {
      if (mounted) {
        setState(() => _isSubmitting = false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Verification Detail')),
      body: FutureBuilder<Map<String, dynamic>>(
        future: _future,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError || !snapshot.hasData) {
            return const Center(
              child: Text('Failed to load verification'),
            );
          }

          final verification = snapshot.data!;
          final documents =
              (verification['documents'] as List<dynamic>? ?? const [])
                  .cast<Map<String, dynamic>>();

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
                        verification['consultantName'] as String? ??
                            verification['consultantProfileId'] as String? ??
                            'Unknown consultant',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        verification['notes'] as String? ??
                            'No verification notes',
                      ),
                      const SizedBox(height: 12),
                      Text('Status: ${verification['status']}'),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'Documents',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 8),
              ...documents.map(
                (document) => Card(
                  child: ListTile(
                    title: Text(
                      document['fileName'] as String? ?? 'Untitled file',
                    ),
                    subtitle: Text(
                      document['description'] as String? ?? '',
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: _reviewNotesController,
                minLines: 3,
                maxLines: 5,
                decoration: const InputDecoration(
                  labelText: 'Review Notes',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              FilledButton(
                onPressed: _isSubmitting ? null : _approve,
                child: _isSubmitting
                    ? const SizedBox(
                        width: 18,
                        height: 18,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      )
                    : const Text('Approve Verification'),
              ),
            ],
          );
        },
      ),
    );
  }
}
