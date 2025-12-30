import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/errors/error_messages.dart';
import '../../../domain/entities/explore/webinar_plan.dart';
import '../../../data/datasources/remote/programs_remote_source.dart';

part 'webinars_provider.g.dart';

/// State for webinars list
class WebinarsState {
  final List<WebinarPlan> webinars;
  final bool isLoading;
  final bool hasMore;
  final String? error;
  final int currentPage;

  const WebinarsState({
    this.webinars = const [],
    this.isLoading = false,
    this.hasMore = true,
    this.error,
    this.currentPage = 0,
  });

  WebinarsState copyWith({
    List<WebinarPlan>? webinars,
    bool? isLoading,
    bool? hasMore,
    String? error,
    int? currentPage,
  }) {
    return WebinarsState(
      webinars: webinars ?? this.webinars,
      isLoading: isLoading ?? this.isLoading,
      hasMore: hasMore ?? this.hasMore,
      error: error,
      currentPage: currentPage ?? this.currentPage,
    );
  }
}

/// Provider for webinars list with pagination
@riverpod
class WebinarsNotifier extends _$WebinarsNotifier {
  static const _pageSize = 20;

  @override
  WebinarsState build() {
    // Use Future.microtask to defer loading until after build() returns
    // and state is initialized. This prevents "Bad state: Tried to read
    // the state of an uninitialized provider" errors.
    Future.microtask(_loadInitial);
    return const WebinarsState(isLoading: true);
  }

  Future<void> _loadInitial() async {
    await loadWebinars(refresh: true);
  }

  Future<void> loadWebinars({
    bool refresh = false,
    String? domainId,
    String? searchQuery,
  }) async {
    if (state.isLoading && !refresh) return;

    final page = refresh ? 0 : state.currentPage;

    state = state.copyWith(
      isLoading: true,
      error: null,
      currentPage: page,
    );

    try {
      final remoteSource = ref.read(programsRemoteSourceProvider);
      final response = await remoteSource.getWebinars(
        page: page,
        pageSize: _pageSize,
        domainId: domainId,
        searchQuery: searchQuery,
      );

      final newWebinars = response.webinars;
      final hasMore = newWebinars.length >= _pageSize;

      state = state.copyWith(
        webinars: refresh ? newWebinars : [...state.webinars, ...newWebinars],
        isLoading: false,
        hasMore: hasMore,
        currentPage: page + 1,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: ErrorMessages.getWebinarsLoadError(e),
      );
    }
  }

  Future<void> loadMore() async {
    if (!state.hasMore || state.isLoading) return;
    await loadWebinars();
  }

  Future<void> refresh() async {
    await loadWebinars(refresh: true);
  }
}

/// Provider for a single webinar detail
@riverpod
Future<WebinarPlan?> webinarDetail(
  Ref ref,
  String webinarId,
) async {
  final remoteSource = ref.watch(programsRemoteSourceProvider);
  return remoteSource.getWebinarById(webinarId);
}
