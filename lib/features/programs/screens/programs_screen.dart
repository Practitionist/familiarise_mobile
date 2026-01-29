import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../shared/utils/fake_data.dart';
import '../providers/webinars_provider.dart';
import '../providers/classes_provider.dart';
import '../widgets/webinar_card.dart';
import '../widgets/class_card.dart';

/// Programs screen with Webinars and Classes tabs
class ProgramsScreen extends ConsumerStatefulWidget {
  const ProgramsScreen({super.key});

  @override
  ConsumerState<ProgramsScreen> createState() => _ProgramsScreenState();
}

class _ProgramsScreenState extends ConsumerState<ProgramsScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Programs'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(
              icon: Icon(Icons.video_library_outlined),
              text: 'Webinars',
            ),
            Tab(
              icon: Icon(Icons.school_outlined),
              text: 'Classes',
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          _WebinarsTab(),
          _ClassesTab(),
        ],
      ),
    );
  }
}

/// Webinars tab content
class _WebinarsTab extends ConsumerWidget {
  const _WebinarsTab();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(webinarsNotifierProvider);

    if (state.isLoading && state.webinars.isEmpty) {
      return Skeletonizer(
        enabled: true,
        child: ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: 3,
          itemBuilder: (_, __) => Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: WebinarCard(webinar: FakeData.webinarPlan(), onTap: () {}),
          ),
        ),
      );
    }

    if (state.error != null && state.webinars.isEmpty) {
      return _ErrorView(
        message: state.error!,
        onRetry: () => ref.read(webinarsNotifierProvider.notifier).refresh(),
      );
    }

    if (state.webinars.isEmpty) {
      return _EmptyView(
        icon: Icons.video_library_outlined,
        title: 'No webinars available',
        subtitle: 'Check back later for upcoming webinars',
      );
    }

    return RefreshIndicator(
      onRefresh: () => ref.read(webinarsNotifierProvider.notifier).refresh(),
      child: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: state.webinars.length + (state.hasMore ? 1 : 0),
        itemBuilder: (context, index) {
          if (index == state.webinars.length) {
            // Load more indicator
            WidgetsBinding.instance.addPostFrameCallback((_) {
              ref.read(webinarsNotifierProvider.notifier).loadMore();
            });
            return const Padding(
              padding: EdgeInsets.all(16),
              child: Center(child: CircularProgressIndicator()),
            );
          }

          final webinar = state.webinars[index];
          return Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: WebinarCard(
              webinar: webinar,
              onTap: () => context.pushNamed(
                'webinarDetail',
                pathParameters: {'webinarPlanId': webinar.id},
              ),
            ),
          );
        },
      ),
    );
  }
}

/// Classes tab content
class _ClassesTab extends ConsumerWidget {
  const _ClassesTab();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(classesNotifierProvider);

    if (state.isLoading && state.classes.isEmpty) {
      return Skeletonizer(
        enabled: true,
        child: ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: 3,
          itemBuilder: (_, __) => Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: ClassCard(classPlan: FakeData.classPlan(), onTap: () {}),
          ),
        ),
      );
    }

    if (state.error != null && state.classes.isEmpty) {
      return _ErrorView(
        message: state.error!,
        onRetry: () => ref.read(classesNotifierProvider.notifier).refresh(),
      );
    }

    if (state.classes.isEmpty) {
      return _EmptyView(
        icon: Icons.school_outlined,
        title: 'No classes available',
        subtitle: 'Check back later for upcoming classes',
      );
    }

    return RefreshIndicator(
      onRefresh: () => ref.read(classesNotifierProvider.notifier).refresh(),
      child: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: state.classes.length + (state.hasMore ? 1 : 0),
        itemBuilder: (context, index) {
          if (index == state.classes.length) {
            // Load more indicator
            WidgetsBinding.instance.addPostFrameCallback((_) {
              ref.read(classesNotifierProvider.notifier).loadMore();
            });
            return const Padding(
              padding: EdgeInsets.all(16),
              child: Center(child: CircularProgressIndicator()),
            );
          }

          final classPlan = state.classes[index];
          return Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: ClassCard(
              classPlan: classPlan,
              onTap: () => context.pushNamed(
                'classDetail',
                pathParameters: {'classPlanId': classPlan.id},
              ),
            ),
          );
        },
      ),
    );
  }
}

/// Empty state view
class _EmptyView extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const _EmptyView({
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 64,
              color: theme.colorScheme.outline,
            ),
            const SizedBox(height: 16),
            Text(
              title,
              style: theme.textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Text(
              subtitle,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

/// Error state view
class _ErrorView extends StatelessWidget {
  final String message;
  final VoidCallback onRetry;

  const _ErrorView({
    required this.message,
    required this.onRetry,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.error_outline,
              size: 64,
              color: theme.colorScheme.error,
            ),
            const SizedBox(height: 16),
            Text(
              'Something went wrong',
              style: theme.textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Text(
              message,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            FilledButton.icon(
              onPressed: onRetry,
              icon: const Icon(Icons.refresh),
              label: const Text('Retry'),
            ),
          ],
        ),
      ),
    );
  }
}
