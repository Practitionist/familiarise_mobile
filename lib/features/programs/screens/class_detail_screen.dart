import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

import '../../../domain/entities/explore/class_plan.dart';
import '../../checkout/screens/checkout_screen.dart';
import '../providers/classes_provider.dart';

/// Detail screen for a class plan
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
          // App bar with thumbnail
          SliverAppBar(
            expandedHeight: 200,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: classPlan.thumbnailUrl != null
                  ? Image.network(
                      classPlan.thumbnailUrl!,
                      fit: BoxFit.cover,
                    )
                  : Container(
                      color: theme.colorScheme.primaryContainer,
                      child: Icon(
                        Icons.school,
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
                  // Title and enrollment status
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          classPlan.title,
                          style: theme.textTheme.headlineSmall?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      _buildEnrollmentBadge(theme),
                    ],
                  ),
                  const SizedBox(height: 16),

                  // Consultant info
                  if (classPlan.consultant != null)
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: CircleAvatar(
                        radius: 24,
                        backgroundImage: classPlan.consultant!.image != null
                            ? NetworkImage(classPlan.consultant!.image!)
                            : null,
                        child: classPlan.consultant!.image == null
                            ? Text(classPlan.consultant!.name[0].toUpperCase())
                            : null,
                      ),
                      title: Text(classPlan.consultant!.name),
                      subtitle: classPlan.consultant!.headline != null
                          ? Text(classPlan.consultant!.headline!)
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
                        Icons.calendar_month,
                        classPlan.formattedDuration,
                      ),
                      _buildChip(
                        theme,
                        Icons.repeat,
                        classPlan.formattedSchedule,
                      ),
                      _buildChip(
                        theme,
                        Icons.format_list_numbered,
                        '${classPlan.totalSessions} sessions',
                      ),
                      _buildChip(
                        theme,
                        Icons.group,
                        'Max ${classPlan.maxParticipants}',
                      ),
                      if (classPlan.language != null)
                        _buildChip(
                          theme,
                          Icons.language,
                          classPlan.language!,
                        ),
                      if (classPlan.level != null)
                        _buildChip(
                          theme,
                          Icons.signal_cellular_alt,
                          classPlan.level!,
                        ),
                      if (classPlan.certificateProvided)
                        _buildChip(
                          theme,
                          Icons.verified,
                          'Certificate',
                        ),
                    ],
                  ),
                  const SizedBox(height: 24),

                  // Class start date
                  if (classPlan.classStartDate != null) ...[
                    Card(
                      color: theme.colorScheme.primaryContainer,
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Row(
                          children: [
                            Icon(
                              Icons.event_available,
                              color: theme.colorScheme.onPrimaryContainer,
                            ),
                            const SizedBox(width: 12),
                            Text(
                              'Class starts: ${DateFormat('MMMM d, yyyy').format(classPlan.classStartDate!)}',
                              style: theme.textTheme.titleSmall?.copyWith(
                                color: theme.colorScheme.onPrimaryContainer,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                  ],

                  // Description
                  if (classPlan.description != null) ...[
                    Text(
                      'About this class',
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      classPlan.description!,
                      style: theme.textTheme.bodyMedium,
                    ),
                    const SizedBox(height: 24),
                  ],

                  // Learning outcomes
                  if (classPlan.learningOutcomes.isNotEmpty) ...[
                    Text(
                      'What you\'ll learn',
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 8),
                    ...classPlan.learningOutcomes.map(
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

                  // Curriculum
                  if (classPlan.curriculum.isNotEmpty) ...[
                    Text(
                      'Curriculum',
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 12),
                    ...classPlan.curriculum.map(
                      (item) => _CurriculumCard(item: item),
                    ),
                  ],

                  // Spots remaining
                  if (classPlan.spotsRemaining < classPlan.maxParticipants) ...[
                    const SizedBox(height: 24),
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: classPlan.spotsRemaining <= 5
                            ? theme.colorScheme.errorContainer
                            : theme.colorScheme.surfaceContainerHighest,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.people,
                            size: 20,
                            color: classPlan.spotsRemaining <= 5
                                ? theme.colorScheme.onErrorContainer
                                : theme.colorScheme.onSurfaceVariant,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            '${classPlan.spotsRemaining} spots remaining',
                            style: theme.textTheme.bodyMedium?.copyWith(
                              fontWeight: FontWeight.w600,
                              color: classPlan.spotsRemaining <= 5
                                  ? theme.colorScheme.onErrorContainer
                                  : theme.colorScheme.onSurfaceVariant,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],

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

  Widget _buildEnrollmentBadge(ThemeData theme) {
    Color backgroundColor;
    Color textColor;
    String text;

    switch (classPlan.enrollmentStatus) {
      case ClassEnrollmentStatus.open:
        backgroundColor = theme.colorScheme.primaryContainer;
        textColor = theme.colorScheme.onPrimaryContainer;
        text = 'Enrolling';
      case ClassEnrollmentStatus.closed:
        backgroundColor = theme.colorScheme.surfaceContainerHighest;
        textColor = theme.colorScheme.onSurfaceVariant;
        text = 'Closed';
      case ClassEnrollmentStatus.full:
        backgroundColor = theme.colorScheme.errorContainer;
        textColor = theme.colorScheme.onErrorContainer;
        text = 'Full';
      case ClassEnrollmentStatus.upcoming:
        backgroundColor = theme.colorScheme.tertiaryContainer;
        textColor = theme.colorScheme.onTertiaryContainer;
        text = 'Coming Soon';
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        text,
        style: theme.textTheme.labelMedium?.copyWith(
          color: textColor,
          fontWeight: FontWeight.w600,
        ),
      ),
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
          Flexible(
            child: Text(
              label,
              style: theme.textTheme.labelMedium?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomBar(BuildContext context, ThemeData theme) {
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
                  classPlan.formattedPrice,
                  style: theme.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: theme.colorScheme.primary,
                  ),
                ),
                Text(
                  'full course',
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                ),
              ],
            ),
            const SizedBox(width: 16),
            // Enroll button
            Expanded(
              child: FilledButton(
                onPressed: classPlan.canEnroll ? () => _handleEnroll(context) : null,
                style: FilledButton.styleFrom(
                  minimumSize: const Size.fromHeight(56),
                ),
                child: Text(_getButtonText()),
              ),
            ),
          ],
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

class _CurriculumCard extends StatelessWidget {
  final ClassCurriculumItem item;

  const _CurriculumCard({required this.item});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      child: ExpansionTile(
        leading: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: theme.colorScheme.primaryContainer,
            borderRadius: BorderRadius.circular(8),
          ),
          alignment: Alignment.center,
          child: Text(
            '${item.weekNumber}',
            style: theme.textTheme.titleMedium?.copyWith(
              color: theme.colorScheme.onPrimaryContainer,
              fontWeight: FontWeight.bold,
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
            ? Text(
                item.description!,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              )
            : null,
        children: [
          if (item.topics.isNotEmpty)
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: item.topics.map((topic) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 6,
                          height: 6,
                          margin: const EdgeInsets.only(top: 6, right: 8),
                          decoration: BoxDecoration(
                            color: theme.colorScheme.primary,
                            shape: BoxShape.circle,
                          ),
                        ),
                        Expanded(child: Text(topic)),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
        ],
      ),
    );
  }
}
