import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../shared/utils/fake_data.dart';
import '../providers/clients_provider.dart';
import '../widgets/client_card.dart';

/// Clients screen for consultant - shows unique consultees
class ClientsScreen extends ConsumerWidget {
  const ClientsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final clientsAsync = ref.watch(clientsListProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Clients'),
        centerTitle: true,
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          ref.invalidate(clientsListProvider);
        },
        child: clientsAsync.when(
          data: (clients) {
            if (clients.isEmpty) {
              return _buildEmptyState(context);
            }
            return ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: clients.length,
              itemBuilder: (context, index) {
                return ClientCard(client: clients[index]);
              },
            );
          },
          loading: () => _buildSkeleton(context),
          error: (error, _) => _buildError(context, ref, error),
        ),
      ),
    );
  }

  Widget _buildEmptyState(BuildContext context) {
    final theme = Theme.of(context);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.people_outline,
            size: 64,
            color: theme.colorScheme.onSurfaceVariant.withValues(alpha: 0.5),
          ),
          const SizedBox(height: 16),
          Text(
            'No clients yet',
            style: theme.textTheme.titleMedium?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Your clients will appear here once you receive bookings',
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildSkeleton(BuildContext context) {
    return Skeletonizer(
      child: ListView(
        padding: const EdgeInsets.all(16),
        children: FakeData.appointmentConsultants(4)
            .map((c) => ClientCard(client: c))
            .toList(),
      ),
    );
  }

  Widget _buildError(BuildContext context, WidgetRef ref, Object error) {
    final theme = Theme.of(context);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.error_outline, size: 64, color: theme.colorScheme.error),
          const SizedBox(height: 16),
          Text('Failed to load clients', style: theme.textTheme.titleMedium),
          const SizedBox(height: 16),
          FilledButton.tonal(
            onPressed: () => ref.invalidate(clientsListProvider),
            child: const Text('Retry'),
          ),
        ],
      ),
    );
  }
}
