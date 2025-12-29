import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

import '../../../domain/entities/explore/webinar_plan.dart';
import '../../checkout/screens/checkout_screen.dart';
import '../providers/webinars_provider.dart';

/// Detail screen for a webinar plan
class WebinarDetailScreen extends ConsumerWidget {
  final String webinarPlanId;

  const WebinarDetailScreen({
    super.key,
    required this.webinarPlanId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final webinarAsync = ref.watch(webinarDetailProvider(webinarPlanId));

    return webinarAsync.when(
      data: (webinar) {
        if (webinar == null) {
          return Scaffold(
            appBar: AppBar(title: const Text('Webinar')),
            body: const Center(child: Text('Webinar not found')),
          );
        }
        return _WebinarDetailContent(webinar: webinar);
      },
      loading: () => Scaffold(
        appBar: AppBar(title: const Text('Webinar')),
        body: const Center(child: CircularProgressIndicator()),
      ),
      error: (e, _) => Scaffold(
        appBar: AppBar(title: const Text('Webinar')),
        body: Center(child: Text('Error: $e')),
      ),
    );
  }
}

class _WebinarDetailContent extends StatelessWidget {
  final WebinarPlan webinar;

  const _WebinarDetailContent({required this.webinar});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // App bar with thumbnail
          SliverAppBar(
            expandedHeight: 200,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: webinar.thumbnailUrl != null
                  ? Image.network(
                      webinar.thumbnailUrl!,
                      fit: BoxFit.cover,
                    )
                  : Container(
                      color: theme.colorScheme.primaryContainer,
                      child: Icon(
                        Icons.video_library,
                        size: 64,
                        color: theme.colorScheme.onPrimaryContainer,
                      ),
                    ),
            ),
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title
                  Text(
                    webinar.title,
                    style: theme.textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Consultant info
                  if (webinar.consultant != null)
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: CircleAvatar(
                        radius: 24,
                        backgroundImage: webinar.consultant!.image != null
                            ? NetworkImage(webinar.consultant!.image!)
                            : null,
                        child: webinar.consultant!.image == null
                            ? Text(webinar.consultant!.name[0].toUpperCase())
                            : null,
                      ),
                      title: Text(webinar.consultant!.name),
                      subtitle: webinar.consultant!.headline != null
                          ? Text(webinar.consultant!.headline!)
                          : null,
                    ),
                  const SizedBox(height: 16),

                  // Key info chips
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: [
                      _buildChip(
                        theme,
                        Icons.access_time,
                        webinar.formattedDuration,
                      ),
                      _buildChip(
                        theme,
                        Icons.group,
                        'Max ${webinar.maxParticipants}',
                      ),
                      if (webinar.language != null)
                        _buildChip(
                          theme,
                          Icons.language,
                          webinar.language!,
                        ),
                      if (webinar.level != null)
                        _buildChip(
                          theme,
                          Icons.signal_cellular_alt,
                          webinar.level!,
                        ),
                      if (webinar.certificateProvided)
                        _buildChip(
                          theme,
                          Icons.verified,
                          'Certificate',
                        ),
                    ],
                  ),
                  const SizedBox(height: 24),

                  // Description
                  if (webinar.description != null) ...[
                    Text(
                      'About this webinar',
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      webinar.description!,
                      style: theme.textTheme.bodyMedium,
                    ),
                    const SizedBox(height: 24),
                  ],

                  // Learning outcomes
                  if (webinar.learningOutcomes.isNotEmpty) ...[
                    Text(
                      'What you\'ll learn',
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 8),
                    ...webinar.learningOutcomes.map(
                      (outcome) => Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.check_circle,
                              size: 20,
                              color: theme.colorScheme.primary,
                            ),
                            const SizedBox(width: 8),
                            Expanded(child: Text(outcome)),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                  ],

                  // Upcoming sessions
                  Text(
                    'Upcoming Sessions',
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 12),
                  if (webinar.upcomingSessions.isEmpty)
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Text(
                          'No upcoming sessions scheduled',
                          style: theme.textTheme.bodyMedium?.copyWith(
                            color: theme.colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ),
                    )
                  else
                    ...webinar.upcomingSessions.map(
                      (session) => _SessionCard(
                        session: session,
                        webinar: webinar,
                      ),
                    ),
                  const SizedBox(height: 100), // Space for bottom bar
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: _buildBottomBar(context, theme),
    );
  }

  Widget _buildChip(ThemeData theme, IconData icon, String label) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 16, color: theme.colorScheme.onSurfaceVariant),
          const SizedBox(width: 6),
          Text(
            label,
            style: theme.textTheme.labelMedium?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomBar(BuildContext context, ThemeData theme) {
    final nextSession = webinar.nextSession;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 8,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: SafeArea(
        child: Row(
          children: [
            // Price
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  webinar.formattedPrice,
                  style: theme.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: theme.colorScheme.primary,
                  ),
                ),
                Text(
                  'per session',
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                ),
              ],
            ),
            const SizedBox(width: 16),
            // Book button
            Expanded(
              child: FilledButton(
                onPressed: nextSession != null
                    ? () => _handleBook(context, nextSession)
                    : null,
                style: FilledButton.styleFrom(
                  minimumSize: const Size.fromHeight(56),
                ),
                child: Text(
                  nextSession != null ? 'Book Now' : 'No Sessions Available',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _handleBook(BuildContext context, WebinarSession session) {
    final params = DirectCheckoutParams(
      consultantProfileId: webinar.consultant!.id,
      planId: webinar.id,
      planType: 'webinar',
      amount: webinar.price,
      currency: webinar.priceCurrency,
      consultantName: webinar.consultant?.name,
      consultantImage: webinar.consultant?.image,
      planTitle: webinar.title,
      slotStartTime: session.scheduledAt,
      slotEndTime: session.scheduledAt.add(
        Duration(hours: webinar.durationInHours.toInt()),
      ),
    );
    context.pushNamed('checkoutDirect', extra: params);
  }
}

class _SessionCard extends StatelessWidget {
  final WebinarSession session;
  final WebinarPlan webinar;

  const _SessionCard({
    required this.session,
    required this.webinar,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isFull = session.isFull;

    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      child: ListTile(
        leading: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: theme.colorScheme.primaryContainer,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(
            Icons.event,
            color: theme.colorScheme.onPrimaryContainer,
          ),
        ),
        title: Text(DateFormat('EEEE, MMM d, yyyy').format(session.scheduledAt)),
        subtitle: Text(DateFormat('h:mm a').format(session.scheduledAt)),
        trailing: isFull
            ? Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: theme.colorScheme.errorContainer,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  'Full',
                  style: theme.textTheme.labelSmall?.copyWith(
                    color: theme.colorScheme.onErrorContainer,
                  ),
                ),
              )
            : Text(
                '${session.spotsRemaining} spots',
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
              ),
        onTap: isFull
            ? null
            : () {
                final params = DirectCheckoutParams(
                  consultantProfileId: webinar.consultant!.id,
                  planId: webinar.id,
                  planType: 'webinar',
                  amount: webinar.price,
                  currency: webinar.priceCurrency,
                  consultantName: webinar.consultant?.name,
                  consultantImage: webinar.consultant?.image,
                  planTitle: webinar.title,
                  slotStartTime: session.scheduledAt,
                  slotEndTime: session.scheduledAt.add(
                    Duration(hours: webinar.durationInHours.toInt()),
                  ),
                );
                context.pushNamed('checkoutDirect', extra: params);
              },
      ),
    );
  }
}
