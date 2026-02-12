import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../domain/entities/explore/class_plan.dart';
import '../../../shared/utils/fake_data.dart';
import '../../checkout/screens/checkout_screen.dart';
import '../providers/classes_provider.dart';
import '../widgets/class_bottom_bar.dart';
import '../widgets/class_curriculum_card.dart';
import '../widgets/class_hero_header.dart';
import '../widgets/class_info_section.dart';
import '../widgets/class_learning_outcomes.dart';
import '../widgets/class_session_card.dart';

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

    final isLoading = classAsync.isLoading;
    final classPlan = classAsync.valueOrNull;

    if (classAsync.hasError && !isLoading) {
      return Scaffold(
        appBar: AppBar(title: const Text('Class')),
        body: Center(child: Text('Error: ${classAsync.error}')),
      );
    }

    if (!isLoading && classPlan == null) {
      return Scaffold(
        appBar: AppBar(title: const Text('Class')),
        body: const Center(child: Text('Class not found')),
      );
    }

    return Skeletonizer(
      enabled: isLoading,
      child: _ClassDetailContent(classPlan: classPlan ?? FakeData.classPlan()),
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
          ClassHeroHeader(classPlan: classPlan),

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
                      ClassEnrollmentBadge(
                        enrollmentStatus: classPlan.enrollmentStatus,
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),

                  // Consultant info card
                  if (classPlan.consultant != null)
                    ClassConsultantCard(
                      name: classPlan.consultant!.name,
                      image: classPlan.consultant!.image,
                      headline: classPlan.consultant!.headline,
                    ),
                  const SizedBox(height: 24),

                  // Key info chips
                  ClassInfoChips(classPlan: classPlan),
                  const SizedBox(height: 28),

                  // Class start date banner
                  if (classPlan.classStartDate != null) ...[
                    ClassStartDateBanner(
                      classStartDate: classPlan.classStartDate!,
                    ),
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
                    ClassLearningOutcomes(
                      outcomes: classPlan.learningOutcomes,
                    ),
                    const SizedBox(height: 32),
                  ],

                  // Curriculum
                  if (classPlan.curriculum.isNotEmpty) ...[
                    _buildSectionTitle(theme, 'Curriculum'),
                    const SizedBox(height: 16),
                    ...classPlan.curriculum.map(
                      (item) => ClassCurriculumCard(item: item),
                    ),
                    const SizedBox(height: 32),
                  ],

                  // Upcoming sessions
                  _buildSectionTitle(theme, 'Upcoming Sessions'),
                  const SizedBox(height: 16),
                  _buildSessionsSection(),

                  // Spots remaining indicator
                  if (classPlan.spotsRemaining <
                      classPlan.maxParticipants) ...[
                    const SizedBox(height: 24),
                    ClassSpotsRemainingBanner(
                      spotsRemaining: classPlan.spotsRemaining,
                    ),
                  ],

                  const SizedBox(height: 120), // Space for bottom bar
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: ClassBottomBar(
        classPlan: classPlan,
        onEnroll: () => _handleEnroll(context),
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

  Widget _buildSessionsSection() {
    if (classPlan.upcomingSessions.isEmpty) {
      return ClassNoSessionsCard(classStartDate: classPlan.classStartDate);
    }

    return Column(
      children: classPlan.upcomingSessions.map((session) {
        return ClassSessionCard(session: session);
      }).toList(),
    );
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
