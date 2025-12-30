import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

import '../../../domain/entities/explore/class_plan.dart';
import '../../checkout/screens/checkout_screen.dart';
import '../providers/classes_provider.dart';

/// Modern detail screen for a class plan
class ClassDetailScreen extends ConsumerWidget {
  final String classPlanId;

  const ClassDetailScreen({
    super.key,
    required this.classPlanId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final classAsync = ref.watch(classDetailProvider(classPlanId));

    return classAsync.when(
      data: (classPlan) {
        if (classPlan == null) {
          return Scaffold(
            appBar: AppBar(title: const Text('Class')),
            body: const Center(child: Text('Class not found')),
          );
        }
        return _ClassDetailContent(classPlan: classPlan);
      },
      loading: () => Scaffold(
        appBar: AppBar(title: const Text('Class')),
        body: const Center(child: CircularProgressIndicator()),
      ),
      error: (e, _) => Scaffold(
        appBar: AppBar(title: const Text('Class')),
        body: Center(child: Text('Error: $e')),
      ),
    );
  }
}

class _ClassDetailContent extends StatelessWidget {
  final ClassPlan classPlan;

  const _ClassDetailContent({required this.classPlan});

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
                  // Title and enrollment status
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          classPlan.title,
                          style: theme.textTheme.headlineSmall?.copyWith(
                            fontWeight: FontWeight.bold,
                            letterSpacing: -0.5,
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      _buildEnrollmentBadge(theme),
                    ],
                  ),
                  const SizedBox(height: 20),

                  // Consultant info card
                  if (classPlan.consultant != null) _buildConsultantCard(theme),
                  const SizedBox(height: 24),

                  // Key info chips
                  _buildInfoChips(theme),
                  const SizedBox(height: 28),

                  // Class start date banner
                  if (classPlan.classStartDate != null) ...[
                    _buildStartDateBanner(theme),
                    const SizedBox(height: 28),
                  ],

                  // Description
                  if (classPlan.description != null) ...[
                    _buildSectionTitle(theme, 'About this class'),
                    const SizedBox(height: 12),
                    Text(
                      classPlan.description!,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                        height: 1.6,
                      ),
                    ),
                    const SizedBox(height: 32),
                  ],

                  // Learning outcomes
                  if (classPlan.learningOutcomes.isNotEmpty) ...[
                    _buildSectionTitle(theme, "What you'll learn"),
                    const SizedBox(height: 16),
                    _buildLearningOutcomes(theme),
                    const SizedBox(height: 32),
                  ],

                  // Curriculum
                  if (classPlan.curriculum.isNotEmpty) ...[
                    _buildSectionTitle(theme, 'Curriculum'),
                    const SizedBox(height: 16),
                    ...classPlan.curriculum.map(
                      (item) => _ModernCurriculumCard(item: item),
                    ),
                    const SizedBox(height: 32),
                  ],

                  // Upcoming sessions
                  _buildSectionTitle(theme, 'Upcoming Sessions'),
                  const SizedBox(height: 16),
                  _buildSessionsSection(theme),

                  // Spots remaining indicator
                  if (classPlan.spotsRemaining < classPlan.maxParticipants) ...[
                    const SizedBox(height: 24),
                    _buildSpotsRemainingBanner(theme),
                  ],

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
            if (classPlan.thumbnailUrl != null)
              Image.network(
                classPlan.thumbnailUrl!,
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
                      classPlan.formattedPrice,
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: theme.colorScheme.onPrimaryContainer,
                      ),
                    ),
                    Text(
                      ' /course',
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
        Icons.school_rounded,
        size: 80,
        color: theme.colorScheme.onPrimaryContainer.withValues(alpha: 0.5),
      ),
    );
  }

  Widget _buildEnrollmentBadge(ThemeData theme) {
    Color backgroundColor;
    Color textColor;
    String text;
    IconData? icon;

    switch (classPlan.enrollmentStatus) {
      case ClassEnrollmentStatus.open:
        backgroundColor = Colors.green.shade100;
        textColor = Colors.green.shade800;
        text = 'Enrolling';
        icon = Icons.check_circle_rounded;
      case ClassEnrollmentStatus.closed:
        backgroundColor = theme.colorScheme.surfaceContainerHighest;
        textColor = theme.colorScheme.onSurfaceVariant;
        text = 'Closed';
        icon = Icons.lock_rounded;
      case ClassEnrollmentStatus.full:
        backgroundColor = theme.colorScheme.errorContainer;
        textColor = theme.colorScheme.onErrorContainer;
        text = 'Full';
        icon = Icons.block_rounded;
      case ClassEnrollmentStatus.upcoming:
        backgroundColor = theme.colorScheme.tertiaryContainer;
        textColor = theme.colorScheme.onTertiaryContainer;
        text = 'Coming Soon';
        icon = Icons.schedule_rounded;
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) ...[
            Icon(icon, size: 14, color: textColor),
            const SizedBox(width: 6),
          ],
          Text(
            text,
            style: theme.textTheme.labelMedium?.copyWith(
              color: textColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildConsultantCard(ThemeData theme) {
    final consultant = classPlan.consultant!;
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
          Icons.calendar_month_rounded,
          classPlan.formattedDuration,
          theme.colorScheme.primary,
        ),
        _buildInfoChip(
          theme,
          Icons.format_list_numbered_rounded,
          '${classPlan.totalSessions} sessions',
          theme.colorScheme.secondary,
        ),
        _buildInfoChip(
          theme,
          Icons.group_rounded,
          'Max ${classPlan.maxParticipants}',
          theme.colorScheme.tertiary,
        ),
        if (classPlan.language != null)
          _buildInfoChip(
            theme,
            Icons.language_rounded,
            classPlan.language!,
            Colors.teal,
          ),
        if (classPlan.level != null)
          _buildInfoChip(
            theme,
            Icons.signal_cellular_alt_rounded,
            classPlan.level!,
            theme.colorScheme.error,
          ),
        if (classPlan.certificateProvided)
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
          Flexible(
            child: Text(
              label,
              style: theme.textTheme.labelLarge?.copyWith(
                color: accentColor,
                fontWeight: FontWeight.w600,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStartDateBanner(ThemeData theme) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            theme.colorScheme.primaryContainer,
            theme.colorScheme.primaryContainer.withValues(alpha: 0.8),
          ],
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: theme.colorScheme.primary.withValues(alpha: 0.2),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(
              Icons.event_available_rounded,
              color: theme.colorScheme.primary,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Class starts',
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.colorScheme.onPrimaryContainer
                        .withValues(alpha: 0.8),
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  DateFormat('EEEE, MMMM d, yyyy')
                      .format(classPlan.classStartDate!),
                  style: theme.textTheme.titleMedium?.copyWith(
                    color: theme.colorScheme.onPrimaryContainer,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
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
      children: classPlan.learningOutcomes.asMap().entries.map((entry) {
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

  Widget _buildSessionsSection(ThemeData theme) {
    if (classPlan.upcomingSessions.isEmpty) {
      return _buildNoSessionsCard(theme);
    }

    return Column(
      children: classPlan.upcomingSessions.map((session) {
        return _ModernClassSessionCard(session: session);
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
            classPlan.classStartDate != null
                ? 'Sessions will be scheduled once the class begins on ${DateFormat('MMMM d').format(classPlan.classStartDate!)}.'
                : 'Check back later for session schedules.',
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildSpotsRemainingBanner(ThemeData theme) {
    final isLow = classPlan.spotsRemaining <= 5;
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: isLow
            ? theme.colorScheme.errorContainer
            : theme.colorScheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            isLow ? Icons.warning_rounded : Icons.people_rounded,
            size: 22,
            color: isLow
                ? theme.colorScheme.onErrorContainer
                : theme.colorScheme.onSurfaceVariant,
          ),
          const SizedBox(width: 10),
          Text(
            '${classPlan.spotsRemaining} spots remaining',
            style: theme.textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.w600,
              color: isLow
                  ? theme.colorScheme.onErrorContainer
                  : theme.colorScheme.onSurfaceVariant,
            ),
          ),
          if (isLow) ...[
            const SizedBox(width: 6),
            Text(
              '— Enroll soon!',
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.onErrorContainer.withValues(alpha: 0.8),
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildBottomBar(BuildContext context, ThemeData theme) {
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
                      'Full course',
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                    ),
                    Text(
                      classPlan.formattedPrice,
                      style: theme.textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: theme.colorScheme.primary,
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 24),
                // Enroll button
                Expanded(
                  child: FilledButton(
                    onPressed:
                        classPlan.canEnroll ? () => _handleEnroll(context) : null,
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
                          _getButtonText(),
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                        if (classPlan.canEnroll) ...[
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

  String _getButtonText() {
    if (classPlan.isFull) return 'Class Full';
    if (classPlan.enrollmentStatus == ClassEnrollmentStatus.closed) {
      return 'Enrollment Closed';
    }
    if (classPlan.enrollmentStatus == ClassEnrollmentStatus.upcoming) {
      return 'Coming Soon';
    }
    return 'Enroll Now';
  }

  void _handleEnroll(BuildContext context) {
    final params = DirectCheckoutParams(
      consultantProfileId: classPlan.consultant!.id,
      planId: classPlan.id,
      planType: 'class',
      amount: classPlan.price,
      currency: classPlan.priceCurrency,
      consultantName: classPlan.consultant?.name,
      consultantImage: classPlan.consultant?.image,
      planTitle: classPlan.title,
      schedulingPeriodStart: classPlan.classStartDate,
      schedulingPeriodEnd: classPlan.classStartDate?.add(
        Duration(days: classPlan.durationInMonths * 30),
      ),
    );
    context.pushNamed('checkoutDirect', extra: params);
  }
}

/// Modern session card with date block design
class _ModernClassSessionCard extends StatelessWidget {
  final ClassSession session;

  const _ModernClassSessionCard({required this.session});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
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
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            // Date block
            _buildDateBlock(theme, isPast),
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
                      color: isPast
                          ? theme.colorScheme.onSurfaceVariant
                          : theme.colorScheme.onSurface,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    _formatTimeRange(),
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
            // Status badge
            _buildStatusBadge(theme),
          ],
        ),
      ),
    );
  }

  String _formatTimeRange() {
    final start = DateFormat('h:mm a').format(session.startsAt);
    if (session.endsAt != null) {
      final end = DateFormat('h:mm a').format(session.endsAt!);
      return '$start - $end';
    }
    return start;
  }

  Widget _buildDateBlock(ThemeData theme, bool isPast) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        gradient: isPast
            ? null
            : LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  theme.colorScheme.primaryContainer,
                  theme.colorScheme.primaryContainer.withValues(alpha: 0.8),
                ],
              ),
        color: isPast ? theme.colorScheme.surfaceContainerHighest : null,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            DateFormat('MMM').format(session.startsAt).toUpperCase(),
            style: theme.textTheme.labelSmall?.copyWith(
              fontWeight: FontWeight.bold,
              color: isPast
                  ? theme.colorScheme.onSurfaceVariant
                  : theme.colorScheme.primary,
              letterSpacing: 0.5,
            ),
          ),
          Text(
            DateFormat('d').format(session.startsAt),
            style: theme.textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.bold,
              color: isPast
                  ? theme.colorScheme.onSurfaceVariant
                  : theme.colorScheme.onPrimaryContainer,
              height: 1,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatusBadge(ThemeData theme) {
    Color backgroundColor;
    Color textColor;
    String text;
    IconData? icon;

    switch (session.status) {
      case ClassSessionStatus.scheduled:
        backgroundColor = theme.colorScheme.primaryContainer;
        textColor = theme.colorScheme.onPrimaryContainer;
        text = 'Scheduled';
        icon = Icons.schedule_rounded;
      case ClassSessionStatus.inProgress:
        backgroundColor = Colors.green.shade100;
        textColor = Colors.green.shade800;
        text = 'Live';
        icon = Icons.play_circle_rounded;
      case ClassSessionStatus.completed:
        backgroundColor = theme.colorScheme.surfaceContainerHighest;
        textColor = theme.colorScheme.onSurfaceVariant;
        text = 'Completed';
        icon = Icons.check_circle_rounded;
      case ClassSessionStatus.cancelled:
        backgroundColor = theme.colorScheme.errorContainer;
        textColor = theme.colorScheme.onErrorContainer;
        text = 'Cancelled';
        icon = Icons.cancel_rounded;
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) ...[
            Icon(icon, size: 14, color: textColor),
            const SizedBox(width: 4),
          ],
          Text(
            text,
            style: theme.textTheme.labelMedium?.copyWith(
              color: textColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

/// Modern curriculum card with expandable content
class _ModernCurriculumCard extends StatelessWidget {
  final ClassCurriculumItem item;

  const _ModernCurriculumCard({required this.item});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

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
            color: Colors.black.withValues(alpha: 0.03),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Theme(
        data: theme.copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          tilePadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          childrenPadding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
          leading: Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  theme.colorScheme.primary,
                  theme.colorScheme.primary.withValues(alpha: 0.8),
                ],
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Text(
                '${item.weekNumber}',
                style: theme.textTheme.titleMedium?.copyWith(
                  color: theme.colorScheme.onPrimary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          title: Text(
            item.title,
            style: theme.textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          subtitle: item.description != null
              ? Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Text(
                    item.description!,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                )
              : null,
          children: [
            if (item.topics.isNotEmpty)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: item.topics.map((topic) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 6,
                          height: 6,
                          margin: const EdgeInsets.only(top: 7, right: 12),
                          decoration: BoxDecoration(
                            color: theme.colorScheme.primary,
                            shape: BoxShape.circle,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            topic,
                            style: theme.textTheme.bodyMedium,
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
          ],
        ),
      ),
    );
  }
}
