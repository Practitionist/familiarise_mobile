import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../shared/widgets/rating_stars.dart';
import '../../reviews/widgets/submit_review_dialog.dart';
import '../providers/consultant_detail_provider.dart';
import '../providers/consultant_reviews_provider.dart';
import '../widgets/plan_card.dart';
import '../widgets/review_card.dart';

/// Consultant profile screen with full details
class ConsultantProfileScreen extends ConsumerWidget {
  final String consultantId;

  const ConsultantProfileScreen({
    super.key,
    required this.consultantId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final consultantAsync = ref.watch(consultantDetailsProvider(consultantId));

    return consultantAsync.when(
      data: (consultant) {
        if (consultant == null) {
          return _buildNotFound(context);
        }
        return _buildProfile(context, ref, consultant);
      },
      loading: () => _buildLoading(),
      error: (error, _) => _buildError(context, error.toString()),
    );
  }

  Widget _buildLoading() {
    return Scaffold(
      body: const Center(child: CircularProgressIndicator()),
    );
  }

  Widget _buildNotFound(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.person_off,
              size: 48,
              color: theme.colorScheme.outline,
            ),
            const SizedBox(height: 16),
            Text(
              'Consultant not found',
              style: theme.textTheme.titleMedium,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildError(BuildContext context, String error) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.error_outline,
                size: 48,
                color: theme.colorScheme.error,
              ),
              const SizedBox(height: 16),
              Text(
                'Failed to load profile',
                style: theme.textTheme.titleMedium,
              ),
              const SizedBox(height: 8),
              Text(
                error,
                style: theme.textTheme.bodySmall,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProfile(
    BuildContext context,
    WidgetRef ref,
    dynamic consultant, // Will be ConsultantDetails after code gen
  ) {
    final theme = Theme.of(context);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // Hero header with image
          SliverAppBar(
            expandedHeight: 300,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: _buildHeroImage(theme, consultant),
            ),
          ),
          // Profile content
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Name, verification badge, and rating
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Flexible(
                              child: Text(
                                consultant.displayName,
                                style: theme.textTheme.headlineSmall?.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            if (consultant.isVerified == true) ...[
                              const SizedBox(width: 8),
                              Icon(
                                Icons.verified,
                                size: 22,
                                color: theme.colorScheme.primary,
                              ),
                            ],
                          ],
                        ),
                      ),
                      if (consultant.rating != null)
                        RatingStars(
                          rating: consultant.rating!,
                          size: 20,
                        ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  // Headline
                  if (consultant.headline != null)
                    Text(
                      consultant.headline!,
                      style: theme.textTheme.titleMedium?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                    ),
                  const SizedBox(height: 16),
                  // Stats row
                  _buildStatsRow(theme, consultant),
                  const SizedBox(height: 24),
                  // Description
                  if (consultant.description != null) ...[
                    _buildSectionTitle(theme, 'About'),
                    const SizedBox(height: 8),
                    Text(
                      consultant.description!,
                      style: theme.textTheme.bodyMedium,
                    ),
                    const SizedBox(height: 24),
                  ],
                  // Skills/Tools
                  if (consultant.toolsAndTechnologies.isNotEmpty) ...[
                    _buildSectionTitle(theme, 'Skills & Tools'),
                    const SizedBox(height: 8),
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: consultant.toolsAndTechnologies
                          .map<Widget>(
                            (tool) => Chip(label: Text(tool)),
                          )
                          .toList(),
                    ),
                    const SizedBox(height: 24),
                  ],
                  // Languages
                  if (consultant.languages.isNotEmpty) ...[
                    _buildSectionTitle(theme, 'Languages'),
                    const SizedBox(height: 8),
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: consultant.languages
                          .map<Widget>(
                            (lang) => Chip(label: Text(lang)),
                          )
                          .toList(),
                    ),
                    const SizedBox(height: 24),
                  ],
                  // Consultation plans
                  if (consultant.consultationPlans.isNotEmpty) ...[
                    _buildSectionTitle(theme, 'Consultation Plans'),
                    const SizedBox(height: 8),
                    ...consultant.consultationPlans.map<Widget>(
                      (plan) => Padding(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: ConsultationPlanCard(
                          plan: plan,
                          onTap: () {
                            context.push(
                              '/booking/${consultant.id}/${plan.id}?type=consultation',
                            );
                          },
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                  ],
                  // Subscription plans
                  if (consultant.subscriptionPlans.isNotEmpty) ...[
                    _buildSectionTitle(theme, 'Subscription Plans'),
                    const SizedBox(height: 8),
                    ...consultant.subscriptionPlans.map<Widget>(
                      (plan) => Padding(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: SubscriptionPlanCard(
                          plan: plan,
                          onTap: () {
                            context.push(
                              '/booking/${consultant.id}/${plan.id}?type=subscription',
                            );
                          },
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                  ],
                  // Tags
                  if (consultant.tags.isNotEmpty) ...[
                    _buildSectionTitle(theme, 'Tags'),
                    const SizedBox(height: 8),
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: consultant.tags
                          .map<Widget>(
                            (tag) => Chip(
                              label: Text(tag),
                              backgroundColor:
                                  theme.colorScheme.secondaryContainer,
                            ),
                          )
                          .toList(),
                    ),
                    const SizedBox(height: 24),
                  ],
                  // Reviews section
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildSectionTitle(theme, 'Reviews'),
                      TextButton.icon(
                        onPressed: () async {
                          final submitted = await SubmitReviewDialog.show(
                            context,
                            consultantProfileId: consultant.id,
                            consultantName: consultant.displayName,
                            consultantImage: consultant.imageUrl,
                          );
                          if (submitted) {
                            // Refresh reviews
                            ref.invalidate(
                              consultantReviewsNotifierProvider(consultantId),
                            );
                          }
                        },
                        icon: const Icon(Icons.rate_review_outlined, size: 18),
                        label: const Text('Write Review'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  _buildReviewsSection(context, ref),
                  const SizedBox(height: 32),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeroImage(ThemeData theme, dynamic consultant) {
    if (consultant.imageUrl != null) {
      return CachedNetworkImage(
        imageUrl: consultant.imageUrl!,
        fit: BoxFit.cover,
        placeholder: (context, url) => Container(
          color: theme.colorScheme.surfaceContainerHighest,
          child: const Center(child: CircularProgressIndicator()),
        ),
        errorWidget: (context, url, error) => _buildPlaceholderImage(
          theme,
          consultant.displayName,
        ),
      );
    }
    return _buildPlaceholderImage(theme, consultant.displayName);
  }

  Widget _buildPlaceholderImage(ThemeData theme, String name) {
    return Container(
      color: theme.colorScheme.primaryContainer,
      child: Center(
        child: Text(
          name.isNotEmpty ? name[0].toUpperCase() : '?',
          style: TextStyle(
            fontSize: 72,
            fontWeight: FontWeight.bold,
            color: theme.colorScheme.onPrimaryContainer,
          ),
        ),
      ),
    );
  }

  Widget _buildStatsRow(ThemeData theme, dynamic consultant) {
    return Row(
      children: [
        _buildStatItem(
          theme,
          Icons.work_history,
          consultant.formattedExperience,
          'Experience',
        ),
        const SizedBox(width: 24),
        if (consultant.totalMenteesHelped != null)
          _buildStatItem(
            theme,
            Icons.people,
            '${consultant.totalMenteesHelped}+',
            'Mentees',
          ),
        const SizedBox(width: 24),
        if (consultant.reviewSummary != null)
          _buildStatItem(
            theme,
            Icons.reviews,
            '${consultant.reviewSummary!.totalReviews}',
            'Reviews',
          ),
      ],
    );
  }

  Widget _buildStatItem(
    ThemeData theme,
    IconData icon,
    String value,
    String label,
  ) {
    return Column(
      children: [
        Row(
          children: [
            Icon(icon, size: 16, color: theme.colorScheme.primary),
            const SizedBox(width: 4),
            Text(
              value,
              style: theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Text(
          label,
          style: theme.textTheme.bodySmall?.copyWith(
            color: theme.colorScheme.onSurfaceVariant,
          ),
        ),
      ],
    );
  }

  Widget _buildSectionTitle(ThemeData theme, String title) {
    return Text(
      title,
      style: theme.textTheme.titleMedium?.copyWith(
        fontWeight: FontWeight.w600,
      ),
    );
  }

  Widget _buildReviewsSection(BuildContext context, WidgetRef ref) {
    final reviewsState =
        ref.watch(consultantReviewsNotifierProvider(consultantId));

    return ReviewsList(
      reviews: reviewsState.reviews,
      isLoading: reviewsState.isLoading || reviewsState.isLoadingMore,
      hasMore: reviewsState.hasMore,
      onLoadMore: () => ref
          .read(consultantReviewsNotifierProvider(consultantId).notifier)
          .loadMore(),
    );
  }
}
