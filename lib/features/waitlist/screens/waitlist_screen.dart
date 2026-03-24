import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../domain/entities/waitlist/waitlist_entities.dart';
import '../providers/waitlist_provider.dart';

class WaitlistScreen extends ConsumerWidget {
  const WaitlistScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final entriesAsync = ref.watch(waitlistEntriesProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('My Waitlists')),
      body: entriesAsync.when(
        data: (entries) {
          if (entries.isEmpty) {
            return const Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.queue, size: 64, color: Colors.grey),
                  SizedBox(height: 16),
                  Text('You are not on any waitlists'),
                ],
              ),
            );
          }
          return RefreshIndicator(
            onRefresh: () =>
                ref.read(waitlistEntriesProvider.notifier).refresh(),
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: entries.length,
              itemBuilder: (context, index) => _WaitlistCard(
                entry: entries[index],
                onLeave: () => _leave(ref, context, entries[index].id),
              ),
            ),
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Error: $e'),
              const SizedBox(height: 16),
              FilledButton(
                onPressed: () =>
                    ref.read(waitlistEntriesProvider.notifier).refresh(),
                child: const Text('Retry'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _leave(
    WidgetRef ref,
    BuildContext context,
    String id,
  ) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Leave Waitlist'),
        content: const Text('Are you sure you want to leave?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx, false),
            child: const Text('Cancel'),
          ),
          FilledButton(
            onPressed: () => Navigator.pop(ctx, true),
            child: const Text('Leave'),
          ),
        ],
      ),
    );
    if (confirmed != true) return;

    try {
      await ref.read(waitlistEntriesProvider.notifier).leave(id);
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Left waitlist')),
        );
      }
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Failed to leave waitlist. Please try again.'),
          ),
        );
      }
    }
  }
}

class _WaitlistCard extends StatelessWidget {
  const _WaitlistCard({
    required this.entry,
    this.onLeave,
  });

  final WaitlistEntry entry;
  final VoidCallback? onLeave;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isActive = entry.status.isActive;

    return Card(
      margin: const EdgeInsets.symmetric(vertical: 4),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  isActive ? Icons.hourglass_top : Icons.check_circle,
                  size: 18,
                  color: isActive ? Colors.orange : Colors.grey,
                ),
                const SizedBox(width: 8),
                Chip(
                  label: Text(
                    entry.status.displayLabel,
                    style: const TextStyle(fontSize: 11),
                  ),
                  visualDensity: VisualDensity.compact,
                  padding: EdgeInsets.zero,
                ),
                const Spacer(),
                Text(
                  'Joined ${DateFormat.yMMMd().format(entry.joinedAt)}',
                  style: theme.textTheme.bodySmall,
                ),
              ],
            ),
            if (entry.position != null) ...[
              const SizedBox(height: 8),
              Text(
                'Position: #${entry.position}',
                style: theme.textTheme.titleMedium,
              ),
            ],
            if (entry.webinarId != null)
              Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Text(
                  'Webinar',
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: Colors.grey,
                  ),
                ),
              ),
            if (entry.classId != null)
              Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Text(
                  'Class',
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: Colors.grey,
                  ),
                ),
              ),
            if (isActive && onLeave != null) ...[
              const SizedBox(height: 12),
              Align(
                alignment: Alignment.centerRight,
                child: OutlinedButton(
                  onPressed: onLeave,
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.red,
                  ),
                  child: const Text('Leave'),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
