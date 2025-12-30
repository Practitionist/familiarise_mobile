import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/errors/error_messages.dart';
import '../../../domain/entities/explore/class_plan.dart';
import '../../../data/datasources/remote/programs_remote_source.dart';

part 'classes_provider.g.dart';

/// State for classes list
class ClassesState {
  final List<ClassPlan> classes;
  final bool isLoading;
  final bool hasMore;
  final String? error;
  final int currentPage;

  const ClassesState({
    this.classes = const [],
    this.isLoading = false,
    this.hasMore = true,
    this.error,
    this.currentPage = 0,
  });

  ClassesState copyWith({
    List<ClassPlan>? classes,
    bool? isLoading,
    bool? hasMore,
    String? error,
    int? currentPage,
  }) {
    return ClassesState(
      classes: classes ?? this.classes,
      isLoading: isLoading ?? this.isLoading,
      hasMore: hasMore ?? this.hasMore,
      error: error,
      currentPage: currentPage ?? this.currentPage,
    );
  }
}

/// Provider for classes list with pagination
@riverpod
class ClassesNotifier extends _$ClassesNotifier {
  static const _pageSize = 20;

  @override
  ClassesState build() {
    // Use Future.microtask to defer loading until after build() returns
    // and state is initialized. This prevents "Bad state: Tried to read
    // the state of an uninitialized provider" errors.
    Future.microtask(_loadInitial);
    return const ClassesState(isLoading: true);
  }

  Future<void> _loadInitial() async {
    await loadClasses(refresh: true);
  }

  Future<void> loadClasses({
    bool refresh = false,
    String? domainId,
    String? searchQuery,
    bool enrollmentOpen = false,
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
      final response = await remoteSource.getClasses(
        page: page,
        pageSize: _pageSize,
        domainId: domainId,
        searchQuery: searchQuery,
        enrollmentOpen: enrollmentOpen,
      );

      final newClasses = response.classes;
      final hasMore = newClasses.length >= _pageSize;

      state = state.copyWith(
        classes: refresh ? newClasses : [...state.classes, ...newClasses],
        isLoading: false,
        hasMore: hasMore,
        currentPage: page + 1,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: ErrorMessages.getClassesLoadError(e),
      );
    }
  }

  Future<void> loadMore() async {
    if (!state.hasMore || state.isLoading) return;
    await loadClasses();
  }

  Future<void> refresh() async {
    await loadClasses(refresh: true);
  }
}

/// Provider for a single class detail
@riverpod
Future<ClassPlan?> classDetail(
  Ref ref,
  String classId,
) async {
  final remoteSource = ref.watch(programsRemoteSourceProvider);
  return remoteSource.getClassById(classId);
}
