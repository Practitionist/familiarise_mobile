import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../core/constants/enums.dart';
import '../../../domain/entities/trial/trial_entities.dart';
import '../../../features/auth/providers/auth_provider.dart';
import '../../../features/dashboard/widgets/stats_overview_card.dart';
import '../../../shared/utils/fake_data.dart';
import '../providers/trial_provider.dart';
import '../widgets/trial_card.dart';

/// Status filter options for trial sessions
enum TrialStatusFilter {
  all('All', null),
  pending('Pending', TrialStatus.pending),
  scheduled('Scheduled', TrialStatus.scheduled),
  completed('Completed', TrialStatus.completed),
  converted('Converted', TrialStatus.converted),
  cancelled('Cancelled', TrialStatus.cancelled),
  rejected('Rejected', TrialStatus.rejected);

  final String label;
  final TrialStatus? value;
  const TrialStatusFilter(this.label, this.value);
}

class TrialListScreen extends ConsumerStatefulWidget {
  const TrialListScreen({super.key});

  @override
  ConsumerState<TrialListScreen> createState() => _TrialListScreenState();
}

class _TrialListScreenState extends ConsumerState<TrialListScreen> {
  TrialStatusFilter _selectedStatus = TrialStatusFilter.all;

  @override
  Widget build(BuildContext context) {
    final trialsAsync = ref.watch(trialListProvider);
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final user = ref.watch(currentUserProvider);
    final isConsultant = user?.role == UserRole.consultant;

    return Scaffold(
      backgroundColor: colorScheme.surfaceContainerLowest,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeader(theme),
            if (isConsultant) _buildStatsSection(theme),
            _buildStatusFilters(theme),
            Expanded(
              child: () {
                final isLoading = trialsAsync.isLoading;
                final trials = trialsAsync.valueOrNull ?? [];

                if (trialsAsync.hasError && !isLoading) {
                  return _buildError(theme, trialsAsync.error.toString());
                }

                final displayTrials =
                    isLoading ? FakeData.trialSessions(4) : trials;

                if (!isLoading && displayTrials.isEmpty) {
                  return _buildEmptyState(theme, isConsultant);
                }

                return RefreshIndicator(
                  onRefresh: () async {
                    await ref.read(trialListProvider.notifier).refresh();
                  },
                  child: Skeletonizer(
                    enabled: isLoading,
                    child: _buildTrialsList(
                      context,
                      ref,
                      displayTrials,
                      isConsultant,
                    ),
                  ),
                );
              }(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(ThemeData theme) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 16, 20, 8),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: theme.colorScheme.surface,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: theme.colorScheme.outlineVariant.withValues(alpha: 0.5),
              ),
            ),
            child: IconButton(
              onPressed: () {
                if (context.canPop()) {
                  context.pop();
                } else {
                  context.go('/dashboard');
                }
              },
              icon: const Icon(Icons.arrow_back, size: 20),
              visualDensity: VisualDensity.compact,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Trial Sessions',
                  style: theme.textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    letterSpacing: -0.5,
                  ),
                ),
                Text(
                  'Manage your trial requests',
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatsSection(ThemeData theme) {
    final statsAsync = ref.watch(trialStatsProvider);

    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 8, 20, 0),
      child: statsAsync.when(
        data: (stats) => StatsOverviewCard(
          items: [
            StatItem(
              label: 'Total',
              value: '${stats.total}',
              icon: Icons.science_outlined,
            ),
            StatItem(
              label: 'Pending',
              value: '${stats.pending}',
              icon: Icons.hourglass_top,
            ),
            StatItem(
              label: 'Completed',
              value: '${stats.completed}',
              icon: Icons.check_circle_outline,
            ),
            StatItem(
              label: 'Conversion',
              value: '${stats.conversionRate}%',
              icon: Icons.trending_up,
            ),
          ],
        ),
        loading: () => Skeletonizer(
          enabled: true,
          child: StatsOverviewCard(
            items: [
              const StatItem(label: 'Total', value: '0'),
              const StatItem(label: 'Pending', value: '0'),
              const StatItem(label: 'Completed', value: '0'),
              const StatItem(label: 'Conversion', value: '0%'),
            ],
          ),
        ),
        error: (_, __) => const SizedBox.shrink(),
      ),
    );
  }

  Widget _buildStatusFilters(ThemeData theme) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Row(
        children: TrialStatusFilter.values.map((status) {
          final isSelected = _selectedStatus == status;

          return Padding(
            padding: const EdgeInsets.only(right: 8),
            child: FilterChip(
              label: Text(
                status.label,
                style: TextStyle(
                  color: isSelected
                      ? theme.colorScheme.onPrimary
                      : theme.colorScheme.onSurfaceVariant,
                  fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
                  fontSize: 12,
                ),
              ),
              selected: isSelected,
              onSelected: (_) {
                setState(() => _selectedStatus = status);
                ref
                    .read(trialListProvider.notifier)
                    .filterByStatus(status.value);
              },
              backgroundColor: theme.colorScheme.surface,
              selectedColor: theme.colorScheme.primary,
              showCheckmark: false,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
                side: BorderSide(
                  color: isSelected
                      ? theme.colorScheme.primary
                      : theme.colorScheme.outlineVariant.withValues(alpha: 0.5),
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
              visualDensity: VisualDensity.compact,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildTrialsList(
    BuildContext context,
    WidgetRef ref,
    List<TrialSession> trials,
    bool isConsultant,
  ) {
    return ListView.builder(
      padding: const EdgeInsets.fromLTRB(20, 8, 20, 100),
      itemCount: trials.length,
      itemBuilder: (context, index) {
        final trial = trials[index];
        return Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: TrialCard(
            trial: trial,
            isConsultantView: isConsultant,
            showActions: isConsultant && trial.status.isPending,
            onAccept: () => _updateStatus(
              ref,
              trial.id,
              TrialStatus.scheduled,
            ),
            onReject: () => _updateStatus(
              ref,
              trial.id,
              TrialStatus.rejected,
            ),
          ),
        );
      },
    );
  }

  Widget _buildEmptyState(ThemeData theme, bool isConsultant) {
    return ListView(
      children: [
        SizedBox(height: MediaQuery.of(context).size.height * 0.15),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(32),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color: theme.colorScheme.primaryContainer
                        .withValues(alpha: 0.3),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Icon(
                    Icons.science_outlined,
                    size: 40,
                    color: theme.colorScheme.primary,
                  ),
                ),
                const SizedBox(height: 24),
                Text(
                  'No trial sessions yet',
                  style: theme.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  isConsultant
                      ? 'When consultees request trials,\nthey\'ll appear here.'
                      : 'Request a trial session with\na consultant to get started.',
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildError(ThemeData theme, String message) {
    return ListView(
      children: [
        SizedBox(height: MediaQuery.of(context).size.height * 0.15),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(32),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color:
                        theme.colorScheme.errorContainer.withValues(alpha: 0.3),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Icon(
                    Icons.error_outline,
                    size: 40,
                    color: theme.colorScheme.error,
                  ),
                ),
                const SizedBox(height: 24),
                Text(
                  'Something went wrong',
                  style: theme.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  message,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                  textAlign: TextAlign.center,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 24),
                OutlinedButton.icon(
                  onPressed: () {
                    ref.read(trialListProvider.notifier).refresh();
                  },
                  icon: const Icon(Icons.refresh, size: 18),
                  label: const Text('Try Again'),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Future<void> _updateStatus(
    WidgetRef ref,
    String trialId,
    TrialStatus status,
  ) async {
    try {
      await ref
          .read(trialListProvider.notifier)
          .updateStatus(trialId: trialId, status: status);
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Trial ${status.displayLabel}')),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed: $e')),
        );
      }
    }
  }
}
