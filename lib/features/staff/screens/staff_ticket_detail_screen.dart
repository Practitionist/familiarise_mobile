import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../shared/providers/core_providers.dart';
import '../providers/staff_provider.dart';

class StaffTicketDetailScreen extends ConsumerStatefulWidget {
  const StaffTicketDetailScreen({
    required this.ticketId,
    super.key,
  });

  final String ticketId;

  @override
  ConsumerState<StaffTicketDetailScreen> createState() =>
      _StaffTicketDetailScreenState();
}

class _StaffTicketDetailScreenState
    extends ConsumerState<StaffTicketDetailScreen> {
  late Future<Map<String, dynamic>> _future;
  final _responseController = TextEditingController();
  bool _isSending = false;

  @override
  void initState() {
    super.initState();
    _future = _load();
  }

  @override
  void dispose() {
    _responseController.dispose();
    super.dispose();
  }

  Future<Map<String, dynamic>> _load() async {
    final dio = ref.read(dioProvider);
    final ticketResponse =
        await dio.get('/api/staff/support-tickets/${widget.ticketId}');
    final responsesResponse = await dio
        .get('/api/staff/support-tickets/${widget.ticketId}/responses');
    final ticket = ticketResponse.data['data'] as Map<String, dynamic>;
    ticket['responses'] = (responsesResponse.data['data'] as List<dynamic>)
        .cast<Map<String, dynamic>>();
    return ticket;
  }

  Future<void> _refresh() async {
    final future = _load();
    setState(() => _future = future);
    await future;
  }

  Future<void> _send() async {
    final message = _responseController.text.trim();
    if (message.isEmpty || _isSending) return;

    setState(() => _isSending = true);
    try {
      final dio = ref.read(dioProvider);
      await dio.post(
        '/api/staff/support-tickets/${widget.ticketId}/responses',
        data: {'message': message},
      );
      ref.invalidate(staffStatsProvider);
      ref.invalidate(staffTicketsProvider);
      _responseController.clear();
      await _refresh();
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Response sent')),
      );
    } finally {
      if (mounted) {
        setState(() => _isSending = false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ticket Detail')),
      body: FutureBuilder<Map<String, dynamic>>(
        future: _future,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError || !snapshot.hasData) {
            return const Center(child: Text('Failed to load ticket'));
          }

          final ticket = snapshot.data!;
          final responses = (ticket['responses'] as List<dynamic>? ?? const [])
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
                        ticket['title'] as String? ?? 'Untitled ticket',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      const SizedBox(height: 8),
                      Text(ticket['description'] as String? ?? ''),
                      const SizedBox(height: 12),
                      Text(
                        'Status: ${ticket['status']} • Priority: ${ticket['priority']}',
                      ),
                      if (ticket['category'] != null) ...[
                        const SizedBox(height: 4),
                        Text('Category: ${ticket['category']}'),
                      ],
                      if (ticket['issueType'] != null) ...[
                        const SizedBox(height: 4),
                        Text('Issue Type: ${ticket['issueType']}'),
                      ],
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'Responses',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 8),
              if (responses.isEmpty)
                const Card(
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Text('No staff responses yet'),
                  ),
                ),
              ...responses.map(
                (response) => Card(
                  child: ListTile(
                    title: Text(response['message'] as String? ?? ''),
                    subtitle: Text(
                      response['createdAt'] as String? ?? '',
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: _responseController,
                minLines: 3,
                maxLines: 5,
                decoration: const InputDecoration(
                  labelText: 'Response',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              FilledButton(
                onPressed: _isSending ? null : _send,
                child: _isSending
                    ? const SizedBox(
                        width: 18,
                        height: 18,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      )
                    : const Text('Send Response'),
              ),
            ],
          );
        },
      ),
    );
  }
}
