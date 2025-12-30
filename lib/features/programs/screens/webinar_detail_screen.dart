import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

import '../../../domain/entities/explore/webinar_plan.dart';
import '../../checkout/screens/checkout_screen.dart';
import '../providers/webinars_provider.dart';

/// Modern detail screen for a webinar plan
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
          // Hero header with gradient overlay
          _buildHeroHeader(theme),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title
                  Text(
                    webinar.title,
                    style: theme.textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                      letterSpacing: -0.5,
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Consultant info card
                  if (webinar.consultant != null) _buildConsultantCard(theme),
                  const SizedBox(height: 24),

                  // Key info chips
                  _buildInfoChips(theme),
                  const SizedBox(height: 32),

                  // Description
                  if (webinar.description != null) ...[
                    _buildSectionTitle(theme, 'About this webinar'),
                    const SizedBox(height: 12),
                    Text(
                      webinar.description!,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                        height: 1.6,
                      ),
                    ),
                    const SizedBox(height: 32),
                  ],

                  // Learning outcomes
                  if (webinar.learningOutcomes.isNotEmpty) ...[
                    _buildSectionTitle(theme, "What you'll learn"),
                    const SizedBox(height: 16),
                    _buildLearningOutcomes(theme),
                    const SizedBox(height: 32),
                  ],

                  // Upcoming sessions
                  _buildSectionTitle(theme, 'Upcoming Sessions'),
                  const SizedBox(height: 16),
                  _buildSessionsSection(context, theme),

                  const SizedBox(height: 120), // Space for bottom bar
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: _buildBottomBar(context, theme),
    );
  }

  Widget _buildHeroHeader(ThemeData theme) {
    return SliverAppBar(
      expandedHeight: 280,
      pinned: true,
      stretch: true,
      backgroundColor: theme.colorScheme.surface,
      flexibleSpace: FlexibleSpaceBar(
        stretchModes: const [
          StretchMode.zoomBackground,
          StretchMode.blurBackground,
        ],
        background: Stack(
          fit: StackFit.expand,
          children: [
            // Thumbnail image
            if (webinar.thumbnailUrl != null)
              Image.network(
                webinar.thumbnailUrl!,
                fit: BoxFit.cover,
                errorBuilder: (_, __, ___) => _buildPlaceholderImage(theme),
              )
            else
              _buildPlaceholderImage(theme),

            // Gradient overlay
            DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black.withValues(alpha: 0.3),
                    Colors.black.withValues(alpha: 0.7),
                  ],
                  stops: const [0.0, 0.5, 1.0],
                ),
              ),
            ),

            // Price badge at bottom
            Positioned(
              bottom: 16,
              right: 16,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primaryContainer,
                  borderRadius: BorderRadius.circular(24),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.2),
                      blurRadius: 8,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      webinar.formattedPrice,
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: theme.colorScheme.onPrimaryContainer,
                      ),
                    ),
                    Text(
                      ' /session',
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: theme.colorScheme.onPrimaryContainer
                            .withValues(alpha: 0.8),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPlaceholderImage(ThemeData theme) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            theme.colorScheme.primaryContainer,
            theme.colorScheme.secondaryContainer,
          ],
        ),
      ),
      child: Icon(
        Icons.video_library_rounded,
        size: 80,
        color: theme.colorScheme.onPrimaryContainer.withValues(alpha: 0.5),
      ),
    );
  }

  Widget _buildConsultantCard(ThemeData theme) {
    final consultant = webinar.consultant!;
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerLow,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: theme.colorScheme.outline.withValues(alpha: 0.1),
        ),
      ),
      child: Row(
        children: [
          // Avatar
          Container(
            width: 56,
            height: 56,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: theme.colorScheme.primary.withValues(alpha: 0.2),
                width: 2,
              ),
            ),
            child: CircleAvatar(
              radius: 26,
              backgroundImage: consultant.image != null
                  ? NetworkImage(consultant.image!)
                  : null,
              backgroundColor: theme.colorScheme.primaryContainer,
              child: consultant.image == null
                  ? Text(
                      consultant.name[0].toUpperCase(),
                      style: theme.textTheme.titleLarge?.copyWith(
                        color: theme.colorScheme.onPrimaryContainer,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  : null,
            ),
          ),
          const SizedBox(width: 16),
          // Info
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  consultant.name,
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                if (consultant.headline != null) ...[
                  const SizedBox(height: 4),
                  Text(
                    consultant.headline!,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ],
            ),
          ),
          // Arrow icon
          Icon(
            Icons.chevron_right_rounded,
            color: theme.colorScheme.onSurfaceVariant,
          ),
        ],
      ),
    );
  }

  Widget _buildInfoChips(ThemeData theme) {
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: [
        _buildInfoChip(
          theme,
          Icons.schedule_rounded,
          webinar.formattedDuration,
          theme.colorScheme.primary,
        ),
        _buildInfoChip(
          theme,
          Icons.group_rounded,
          'Max ${webinar.maxParticipants}',
          theme.colorScheme.secondary,
        ),
        if (webinar.language != null)
          _buildInfoChip(
            theme,
            Icons.language_rounded,
            webinar.language!,
            theme.colorScheme.tertiary,
          ),
        if (webinar.level != null)
          _buildInfoChip(
            theme,
            Icons.signal_cellular_alt_rounded,
            webinar.level!,
            theme.colorScheme.error,
          ),
        if (webinar.certificateProvided)
          _buildInfoChip(
            theme,
            Icons.workspace_premium_rounded,
            'Certificate',
            Colors.amber.shade700,
          ),
      ],
    );
  }

  Widget _buildInfoChip(
    ThemeData theme,
    IconData icon,
    String label,
    Color accentColor,
  ) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      decoration: BoxDecoration(
        color: accentColor.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(24),
        border: Border.all(
          color: accentColor.withValues(alpha: 0.2),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 18, color: accentColor),
          const SizedBox(width: 8),
          Text(
            label,
            style: theme.textTheme.labelLarge?.copyWith(
              color: accentColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(ThemeData theme, String title) {
    return Text(
      title,
      style: theme.textTheme.titleMedium?.copyWith(
        fontWeight: FontWeight.bold,
        letterSpacing: -0.3,
      ),
    );
  }

  Widget _buildLearningOutcomes(ThemeData theme) {
    return Column(
      children: webinar.learningOutcomes.asMap().entries.map((entry) {
        final index = entry.key;
        final outcome = entry.value;
        return Container(
          margin: const EdgeInsets.only(bottom: 12),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: theme.colorScheme.surfaceContainerLow,
            borderRadius: BorderRadius.circular(14),
            border: Border.all(
              color: theme.colorScheme.outline.withValues(alpha: 0.1),
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Number badge
              Container(
                width: 28,
                height: 28,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      theme.colorScheme.primary,
                      theme.colorScheme.primary.withValues(alpha: 0.8),
                    ],
                  ),
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Text(
                    '${index + 1}',
                    style: theme.textTheme.labelMedium?.copyWith(
                      color: theme.colorScheme.onPrimary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 14),
              Expanded(
                child: Text(
                  outcome,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    height: 1.4,
                  ),
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }

  Widget _buildSessionsSection(BuildContext context, ThemeData theme) {
    if (webinar.upcomingSessions.isEmpty) {
      return _buildNoSessionsCard(theme);
    }

    return Column(
      children: webinar.upcomingSessions.map((session) {
        return _ModernSessionCard(
          session: session,
          webinar: webinar,
        );
      }).toList(),
    );
  }

  Widget _buildNoSessionsCard(ThemeData theme) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerLow,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: theme.colorScheme.outline.withValues(alpha: 0.1),
        ),
      ),
      child: Column(
        children: [
          Container(
            width: 64,
            height: 64,
            decoration: BoxDecoration(
              color: theme.colorScheme.surfaceContainerHighest,
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.event_busy_rounded,
              size: 32,
              color: theme.colorScheme.onSurfaceVariant.withValues(alpha: 0.6),
            ),
          ),
          const SizedBox(height: 16),
          Text(
            'No upcoming sessions',
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Check back later for new sessions or contact the consultant for availability.',
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildBottomBar(BuildContext context, ThemeData theme) {
    final nextSession = webinar.nextSession;

    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: theme.colorScheme.surface.withValues(alpha: 0.9),
            border: Border(
              top: BorderSide(
                color: theme.colorScheme.outline.withValues(alpha: 0.1),
              ),
            ),
          ),
          child: SafeArea(
            child: Row(
              children: [
                // Price display
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'From',
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          webinar.formattedPrice,
                          style: theme.textTheme.headlineSmall?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: theme.colorScheme.primary,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(width: 24),
                // Book button
                Expanded(
                  child: FilledButton(
                    onPressed: nextSession != null
                        ? () => _handleBook(context, nextSession)
                        : null,
                    style: FilledButton.styleFrom(
                      minimumSize: const Size.fromHeight(54),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          nextSession != null
                              ? 'Book Now'
                              : 'No Sessions Available',
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                        if (nextSession != null) ...[
                          const SizedBox(width: 8),
                          const Icon(Icons.arrow_forward_rounded, size: 20),
                        ],
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
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
      slotStartTime: session.startsAt,
      slotEndTime: session.startsAt.add(
        Duration(hours: webinar.durationInHours.toInt()),
      ),
    );
    context.pushNamed('checkoutDirect', extra: params);
  }
}

/// Modern session card with date block design
class _ModernSessionCard extends StatelessWidget {
  final WebinarSession session;
  final WebinarPlan webinar;

  const _ModernSessionCard({
    required this.session,
    required this.webinar,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isFull = session.isFull;
    final isPast = session.startsAt.isBefore(DateTime.now());

    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: theme.colorScheme.outline.withValues(alpha: 0.1),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.04),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: isFull || isPast ? null : () => _handleTap(context),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                // Date block
                _buildDateBlock(theme),
                const SizedBox(width: 16),
                // Session details
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        DateFormat('EEEE').format(session.startsAt),
                        style: theme.textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        DateFormat('h:mm a').format(session.startsAt),
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: theme.colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ],
                  ),
                ),
                // Status/spots indicator
                _buildStatusIndicator(theme, isFull, isPast),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDateBlock(ThemeData theme) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            theme.colorScheme.primaryContainer,
            theme.colorScheme.primaryContainer.withValues(alpha: 0.8),
          ],
        ),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            DateFormat('MMM').format(session.startsAt).toUpperCase(),
            style: theme.textTheme.labelSmall?.copyWith(
              fontWeight: FontWeight.bold,
              color: theme.colorScheme.primary,
              letterSpacing: 0.5,
            ),
          ),
          Text(
            DateFormat('d').format(session.startsAt),
            style: theme.textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.bold,
              color: theme.colorScheme.onPrimaryContainer,
              height: 1,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatusIndicator(ThemeData theme, bool isFull, bool isPast) {
    if (isPast) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
          color: theme.colorScheme.surfaceContainerHighest,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          'Ended',
          style: theme.textTheme.labelMedium?.copyWith(
            color: theme.colorScheme.onSurfaceVariant,
            fontWeight: FontWeight.w600,
          ),
        ),
      );
    }

    if (isFull) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
          color: theme.colorScheme.errorContainer,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          'Full',
          style: theme.textTheme.labelMedium?.copyWith(
            color: theme.colorScheme.onErrorContainer,
            fontWeight: FontWeight.w600,
          ),
        ),
      );
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: theme.colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.event_seat_rounded,
            size: 14,
            color: theme.colorScheme.onPrimaryContainer,
          ),
          const SizedBox(width: 4),
          Text(
            '${session.spotsRemaining}',
            style: theme.textTheme.labelMedium?.copyWith(
              color: theme.colorScheme.onPrimaryContainer,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  void _handleTap(BuildContext context) {
    final params = DirectCheckoutParams(
      consultantProfileId: webinar.consultant!.id,
      planId: webinar.id,
      planType: 'webinar',
      amount: webinar.price,
      currency: webinar.priceCurrency,
      consultantName: webinar.consultant?.name,
      consultantImage: webinar.consultant?.image,
      planTitle: webinar.title,
      slotStartTime: session.startsAt,
      slotEndTime: session.startsAt.add(
        Duration(hours: webinar.durationInHours.toInt()),
      ),
    );
    context.pushNamed('checkoutDirect', extra: params);
  }
}
