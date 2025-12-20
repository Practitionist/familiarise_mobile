import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../domain/entities/explore/review.dart';
import '../../../shared/widgets/rating_stars.dart';

/// Card for displaying a review
class ReviewCard extends StatelessWidget {
  final Review review;

  const ReviewCard({
    super.key,
    required this.review,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Reviewer info row
            Row(
              children: [
                // Avatar
                _buildAvatar(theme),
                const SizedBox(width: 12),
                // Name and date
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        review.reviewer?.displayName ?? 'Anonymous',
                        style: theme.textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        review.timeAgo,
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: theme.colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ],
                  ),
                ),
                // Rating
                RatingBadge(rating: review.rating.toDouble()),
              ],
            ),
            // Review description
            if (review.description != null) ...[
              const SizedBox(height: 12),
              Text(
                review.description!,
                style: theme.textTheme.bodyMedium,
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildAvatar(ThemeData theme) {
    final reviewer = review.reviewer;

    if (reviewer?.image != null) {
      return CircleAvatar(
        radius: 20,
        backgroundImage: CachedNetworkImageProvider(reviewer!.image!),
      );
    }

    return CircleAvatar(
      radius: 20,
      backgroundColor: theme.colorScheme.primaryContainer,
      child: Text(
        reviewer?.initials ?? 'A',
        style: TextStyle(
          fontWeight: FontWeight.w600,
          color: theme.colorScheme.onPrimaryContainer,
        ),
      ),
    );
  }
}

/// List of review cards with optional load more
class ReviewsList extends StatelessWidget {
  final List<Review> reviews;
  final bool isLoading;
  final bool hasMore;
  final VoidCallback? onLoadMore;

  const ReviewsList({
    super.key,
    required this.reviews,
    this.isLoading = false,
    this.hasMore = false,
    this.onLoadMore,
  });

  @override
  Widget build(BuildContext context) {
    if (reviews.isEmpty && !isLoading) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.rate_review_outlined,
                size: 48,
                color: Theme.of(context).colorScheme.outline,
              ),
              const SizedBox(height: 16),
              Text(
                'No reviews yet',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
          ),
        ),
      );
    }

    return Column(
      children: [
        ...reviews.map((review) => Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: ReviewCard(review: review),
            )),
        if (isLoading)
          const Padding(
            padding: EdgeInsets.all(16),
            child: CircularProgressIndicator(),
          ),
        if (hasMore && !isLoading)
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextButton(
              onPressed: onLoadMore,
              child: const Text('Load more reviews'),
            ),
          ),
      ],
    );
  }
}
