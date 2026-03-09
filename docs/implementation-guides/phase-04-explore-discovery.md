# Phase 4: Explore & Discovery

## Overview

This phase implements the consultant discovery experience, allowing users to browse, search, and filter consultants. Users can view consultant profiles, see their expertise, ratings, availability, and consultation plans.

**Prerequisites:** Phases 1-3 completed
**Target Completion:** Full browse and search functionality

---

## Key Features

1. **Explore Screen** - Grid/list of consultants with search
2. **Filter System** - Domain, rating, price, availability filters
3. **Consultant Profile** - Detailed view with bio, reviews, plans
4. **Domain Categories** - Browse by expertise area

---

## 1. Domain Layer

### 1.1 Consultant Entity

Create `lib/domain/entities/consultant.dart`:

```dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'user.dart';

part 'consultant.freezed.dart';

@freezed
class Consultant with _$Consultant {
  const Consultant._();

  const factory Consultant({
    required String id,
    required String userId,
    required User user,
    double? experience,
    double? rating,
    int? reviewCount,
    String? headline,
    String? bio,
    Domain? domain,
    @Default([]) List<SubDomain> subDomains,
    @Default([]) List<String> languages,
    @Default([]) List<String> toolsAndTechnologies,
    @Default(false) bool isVerified,
    @Default([]) List<ConsultationPlan> consultationPlans,
    @Default([]) List<SubscriptionPlan> subscriptionPlans,
    String? profilePictureUrl,
  }) = _Consultant;

  String get displayName => user.name ?? 'Consultant';
  String get initials => user.initials;

  int get lowestPrice {
    if (consultationPlans.isEmpty) return 0;
    return consultationPlans.map((p) => p.price).reduce((a, b) => a < b ? a : b);
  }
}

@freezed
class Domain with _$Domain {
  const factory Domain({
    required String id,
    required String name,
    String? description,
    String? iconUrl,
    @Default([]) List<SubDomain> subDomains,
  }) = _Domain;
}

@freezed
class SubDomain with _$SubDomain {
  const factory SubDomain({
    required String id,
    required String name,
    String? domainId,
  }) = _SubDomain;
}

@freezed
class ConsultationPlan with _$ConsultationPlan {
  const factory ConsultationPlan({
    required String id,
    required String title,
    required int price,
    required String currency,
    required int durationMinutes,
    String? description,
    @Default(false) bool requiresDocumentVerification,
    @Default(true) bool isActive,
  }) = _ConsultationPlan;
}

@freezed
class SubscriptionPlan with _$SubscriptionPlan {
  const factory SubscriptionPlan({
    required String id,
    required String title,
    required int price,
    required String currency,
    required String billingCycle, // MONTHLY, QUARTERLY, YEARLY
    int? sessionsPerMonth,
    int? chatMessagesPerDay,
    String? description,
    @Default(true) bool isActive,
  }) = _SubscriptionPlan;
}
```

### 1.2 Review Entity

Create `lib/domain/entities/review.dart`:

```dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'review.freezed.dart';

@freezed
class Review with _$Review {
  const factory Review({
    required String id,
    required String reviewerId,
    required String consultantId,
    required int rating,
    String? comment,
    String? reviewerName,
    String? reviewerImage,
    required DateTime createdAt,
  }) = _Review;
}
```

### 1.3 Consultant Repository Interface

Create `lib/domain/repositories/consultant_repository.dart`:

```dart
import '../entities/consultant.dart';
import '../entities/review.dart';
import '../../core/errors/result.dart';

abstract class ConsultantRepository {
  /// Get paginated list of consultants
  AsyncResult<List<Consultant>> getConsultants({
    String? domainId,
    String? searchQuery,
    double? minRating,
    int? maxPrice,
    int page = 0,
    int pageSize = 20,
  });

  /// Get consultant by ID
  AsyncResult<Consultant> getConsultantById(String id);

  /// Get all domains
  AsyncResult<List<Domain>> getDomains();

  /// Get reviews for a consultant
  AsyncResult<List<Review>> getConsultantReviews(
    String consultantId, {
    int page = 0,
    int pageSize = 10,
  });

  /// Search consultants
  AsyncResult<List<Consultant>> searchConsultants(String query);
}
```

---

## 2. Data Layer

### 2.1 Consultant Model

Create `lib/data/models/consultant_model.dart`:

```dart
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/consultant.dart';
import 'user_model.dart';

part 'consultant_model.freezed.dart';
part 'consultant_model.g.dart';

@freezed
class ConsultantModel with _$ConsultantModel {
  const ConsultantModel._();

  const factory ConsultantModel({
    required String id,
    @JsonKey(name: 'user_id') required String userId,
    required UserModel user,
    double? experience,
    double? rating,
    @JsonKey(name: 'review_count') int? reviewCount,
    String? headline,
    String? bio,
    DomainModel? domain,
    @JsonKey(name: 'sub_domains') @Default([]) List<SubDomainModel> subDomains,
    @Default([]) List<String> languages,
    @JsonKey(name: 'tools_and_technologies')
    @Default([])
    List<String> toolsAndTechnologies,
    @JsonKey(name: 'is_verified') @Default(false) bool isVerified,
    @JsonKey(name: 'consultation_plans')
    @Default([])
    List<ConsultationPlanModel> consultationPlans,
    @JsonKey(name: 'subscription_plans')
    @Default([])
    List<SubscriptionPlanModel> subscriptionPlans,
  }) = _ConsultantModel;

  factory ConsultantModel.fromJson(Map<String, dynamic> json) =>
      _$ConsultantModelFromJson(json);

  Consultant toEntity() => Consultant(
        id: id,
        userId: userId,
        user: user.toEntity(),
        experience: experience,
        rating: rating,
        reviewCount: reviewCount,
        headline: headline,
        bio: bio,
        domain: domain?.toEntity(),
        subDomains: subDomains.map((s) => s.toEntity()).toList(),
        languages: languages,
        toolsAndTechnologies: toolsAndTechnologies,
        isVerified: isVerified,
        consultationPlans: consultationPlans.map((p) => p.toEntity()).toList(),
        subscriptionPlans: subscriptionPlans.map((p) => p.toEntity()).toList(),
        profilePictureUrl: user.image,
      );
}

@freezed
class DomainModel with _$DomainModel {
  const DomainModel._();

  const factory DomainModel({
    required String id,
    required String name,
    String? description,
    @JsonKey(name: 'icon_url') String? iconUrl,
    @JsonKey(name: 'sub_domains') @Default([]) List<SubDomainModel> subDomains,
  }) = _DomainModel;

  factory DomainModel.fromJson(Map<String, dynamic> json) =>
      _$DomainModelFromJson(json);

  Domain toEntity() => Domain(
        id: id,
        name: name,
        description: description,
        iconUrl: iconUrl,
        subDomains: subDomains.map((s) => s.toEntity()).toList(),
      );
}

@freezed
class SubDomainModel with _$SubDomainModel {
  const SubDomainModel._();

  const factory SubDomainModel({
    required String id,
    required String name,
    @JsonKey(name: 'domain_id') String? domainId,
  }) = _SubDomainModel;

  factory SubDomainModel.fromJson(Map<String, dynamic> json) =>
      _$SubDomainModelFromJson(json);

  SubDomain toEntity() => SubDomain(id: id, name: name, domainId: domainId);
}

@freezed
class ConsultationPlanModel with _$ConsultationPlanModel {
  const ConsultationPlanModel._();

  const factory ConsultationPlanModel({
    required String id,
    required String title,
    required int price,
    @Default('INR') String currency,
    @JsonKey(name: 'duration_minutes') required int durationMinutes,
    String? description,
    @JsonKey(name: 'requires_document_verification')
    @Default(false)
    bool requiresDocumentVerification,
    @JsonKey(name: 'is_active') @Default(true) bool isActive,
  }) = _ConsultationPlanModel;

  factory ConsultationPlanModel.fromJson(Map<String, dynamic> json) =>
      _$ConsultationPlanModelFromJson(json);

  ConsultationPlan toEntity() => ConsultationPlan(
        id: id,
        title: title,
        price: price,
        currency: currency,
        durationMinutes: durationMinutes,
        description: description,
        requiresDocumentVerification: requiresDocumentVerification,
        isActive: isActive,
      );
}

@freezed
class SubscriptionPlanModel with _$SubscriptionPlanModel {
  const SubscriptionPlanModel._();

  const factory SubscriptionPlanModel({
    required String id,
    required String title,
    required int price,
    @Default('INR') String currency,
    @JsonKey(name: 'billing_cycle') required String billingCycle,
    @JsonKey(name: 'sessions_per_month') int? sessionsPerMonth,
    @JsonKey(name: 'chat_messages_per_day') int? chatMessagesPerDay,
    String? description,
    @JsonKey(name: 'is_active') @Default(true) bool isActive,
  }) = _SubscriptionPlanModel;

  factory SubscriptionPlanModel.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionPlanModelFromJson(json);

  SubscriptionPlan toEntity() => SubscriptionPlan(
        id: id,
        title: title,
        price: price,
        currency: currency,
        billingCycle: billingCycle,
        sessionsPerMonth: sessionsPerMonth,
        chatMessagesPerDay: chatMessagesPerDay,
        description: description,
        isActive: isActive,
      );
}
```

### 2.2 Consultant Remote Source

Create `lib/data/datasources/remote/consultant_remote_source.dart`:

```dart
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/errors/exceptions.dart';
import '../../../core/network/api_endpoints.dart';
import '../../../core/network/dio_client.dart';
import '../../models/consultant_model.dart';
import '../../models/review_model.dart';

part 'consultant_remote_source.g.dart';

@riverpod
ConsultantRemoteSource consultantRemoteSource(ConsultantRemoteSourceRef ref) {
  return ConsultantRemoteSourceImpl(ref.watch(dioProvider));
}

abstract class ConsultantRemoteSource {
  Future<List<ConsultantModel>> getConsultants({
    String? domainId,
    String? searchQuery,
    double? minRating,
    int? maxPrice,
    int page = 0,
    int pageSize = 20,
  });

  Future<ConsultantModel> getConsultantById(String id);
  Future<List<DomainModel>> getDomains();
  Future<List<ReviewModel>> getConsultantReviews(
    String consultantId, {
    int page = 0,
    int pageSize = 10,
  });
}

class ConsultantRemoteSourceImpl implements ConsultantRemoteSource {
  final Dio _dio;

  ConsultantRemoteSourceImpl(this._dio);

  @override
  Future<List<ConsultantModel>> getConsultants({
    String? domainId,
    String? searchQuery,
    double? minRating,
    int? maxPrice,
    int page = 0,
    int pageSize = 20,
  }) async {
    try {
      final response = await _dio.get(
        ApiEndpoints.consultants,
        queryParameters: {
          if (domainId != null) 'domainId': domainId,
          if (searchQuery != null) 'search': searchQuery,
          if (minRating != null) 'minRating': minRating,
          if (maxPrice != null) 'maxPrice': maxPrice,
          'page': page,
          'pageSize': pageSize,
        },
      );

      final list = response.data['consultants'] as List;
      return list
          .map((json) => ConsultantModel.fromJson(json as Map<String, dynamic>))
          .toList();
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }

  @override
  Future<ConsultantModel> getConsultantById(String id) async {
    try {
      final response = await _dio.get(ApiEndpoints.consultantById(id));
      return ConsultantModel.fromJson(
        response.data['consultant'] as Map<String, dynamic>,
      );
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }

  @override
  Future<List<DomainModel>> getDomains() async {
    try {
      final response = await _dio.get(ApiEndpoints.domains);
      final list = response.data['domains'] as List;
      return list
          .map((json) => DomainModel.fromJson(json as Map<String, dynamic>))
          .toList();
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }

  @override
  Future<List<ReviewModel>> getConsultantReviews(
    String consultantId, {
    int page = 0,
    int pageSize = 10,
  }) async {
    try {
      final response = await _dio.get(
        ApiEndpoints.consultantReviews(consultantId),
        queryParameters: {'page': page, 'pageSize': pageSize},
      );
      final list = response.data['reviews'] as List;
      return list
          .map((json) => ReviewModel.fromJson(json as Map<String, dynamic>))
          .toList();
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }
}
```

---

## 3. Presentation Layer

### 3.1 Explore Provider

Create `lib/features/explore/providers/explore_provider.dart`:

```dart
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data/repositories/consultant_repository_impl.dart';
import '../../../domain/entities/consultant.dart';
import '../../../domain/repositories/consultant_repository.dart';

part 'explore_provider.g.dart';

@riverpod
class ExploreFilter extends _$ExploreFilter {
  @override
  ExploreFilterState build() => const ExploreFilterState();

  void setDomain(String? domainId) {
    state = state.copyWith(domainId: domainId);
  }

  void setSearchQuery(String? query) {
    state = state.copyWith(searchQuery: query);
  }

  void setMinRating(double? rating) {
    state = state.copyWith(minRating: rating);
  }

  void setMaxPrice(int? price) {
    state = state.copyWith(maxPrice: price);
  }

  void clearFilters() {
    state = const ExploreFilterState();
  }
}

class ExploreFilterState {
  final String? domainId;
  final String? searchQuery;
  final double? minRating;
  final int? maxPrice;

  const ExploreFilterState({
    this.domainId,
    this.searchQuery,
    this.minRating,
    this.maxPrice,
  });

  ExploreFilterState copyWith({
    String? domainId,
    String? searchQuery,
    double? minRating,
    int? maxPrice,
  }) {
    return ExploreFilterState(
      domainId: domainId ?? this.domainId,
      searchQuery: searchQuery ?? this.searchQuery,
      minRating: minRating ?? this.minRating,
      maxPrice: maxPrice ?? this.maxPrice,
    );
  }

  bool get hasFilters =>
      domainId != null ||
      searchQuery != null ||
      minRating != null ||
      maxPrice != null;
}

@riverpod
Future<List<Consultant>> consultants(ConsultantsRef ref) async {
  final repository = ref.watch(consultantRepositoryProvider);
  final filters = ref.watch(exploreFilterProvider);

  final result = await repository.getConsultants(
    domainId: filters.domainId,
    searchQuery: filters.searchQuery,
    minRating: filters.minRating,
    maxPrice: filters.maxPrice,
  );

  return result.fold(
    (failure) => throw Exception(failure.userMessage),
    (consultants) => consultants,
  );
}

@riverpod
Future<List<Domain>> domains(DomainsRef ref) async {
  final repository = ref.watch(consultantRepositoryProvider);
  final result = await repository.getDomains();

  return result.fold(
    (failure) => throw Exception(failure.userMessage),
    (domains) => domains,
  );
}

@riverpod
Future<Consultant> consultantDetail(
  ConsultantDetailRef ref,
  String consultantId,
) async {
  final repository = ref.watch(consultantRepositoryProvider);
  final result = await repository.getConsultantById(consultantId);

  return result.fold(
    (failure) => throw Exception(failure.userMessage),
    (consultant) => consultant,
  );
}
```

### 3.2 Explore Screen

Create `lib/features/explore/screens/explore_screen.dart`:

```dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_theme.dart';
import '../../../app/theme/app_typography.dart';
import '../../../core/utils/currency_utils.dart';
import '../../../domain/entities/consultant.dart';
import '../providers/explore_provider.dart';
import '../widgets/consultant_card.dart';
import '../widgets/domain_filter_chips.dart';
import '../widgets/search_bar_widget.dart';

class ExploreScreen extends ConsumerWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final consultantsAsync = ref.watch(consultantsProvider);
    final filters = ref.watch(exploreFilterProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Explore Experts'),
        actions: [
          if (filters.hasFilters)
            TextButton(
              onPressed: () {
                ref.read(exploreFilterProvider.notifier).clearFilters();
              },
              child: const Text('Clear'),
            ),
        ],
      ),
      body: Column(
        children: [
          // Search bar
          Padding(
            padding: const EdgeInsets.all(AppTheme.space4),
            child: SearchBarWidget(
              onSearch: (query) {
                ref.read(exploreFilterProvider.notifier).setSearchQuery(
                      query.isEmpty ? null : query,
                    );
              },
            ),
          ),

          // Domain filters
          const DomainFilterChips(),

          const SizedBox(height: AppTheme.space2),

          // Consultants list
          Expanded(
            child: consultantsAsync.when(
              data: (consultants) {
                if (consultants.isEmpty) {
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.search_off,
                          size: 64,
                          color: AppColors.mutedForeground,
                        ),
                        const SizedBox(height: AppTheme.space4),
                        Text(
                          'No experts found',
                          style: AppTypography.h4,
                        ),
                        const SizedBox(height: AppTheme.space2),
                        Text(
                          'Try adjusting your filters',
                          style: AppTypography.body.copyWith(
                            color: AppColors.mutedForeground,
                          ),
                        ),
                      ],
                    ),
                  );
                }

                return RefreshIndicator(
                  onRefresh: () => ref.refresh(consultantsProvider.future),
                  child: ListView.builder(
                    padding: const EdgeInsets.all(AppTheme.space4),
                    itemCount: consultants.length,
                    itemBuilder: (context, index) {
                      final consultant = consultants[index];
                      return Padding(
                        padding: const EdgeInsets.only(bottom: AppTheme.space3),
                        child: ConsultantCard(
                          consultant: consultant,
                          onTap: () {
                            context.pushNamed(
                              'consultantProfile',
                              pathParameters: {'consultantId': consultant.id},
                            );
                          },
                        ),
                      );
                    },
                  ),
                );
              },
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (error, _) => Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Error: $error'),
                    const SizedBox(height: AppTheme.space4),
                    ElevatedButton(
                      onPressed: () => ref.refresh(consultantsProvider),
                      child: const Text('Retry'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
```

### 3.3 Consultant Card Widget

Create `lib/features/explore/widgets/consultant_card.dart`:

```dart
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_theme.dart';
import '../../../app/theme/app_typography.dart';
import '../../../core/utils/currency_utils.dart';
import '../../../domain/entities/consultant.dart';

class ConsultantCard extends StatelessWidget {
  final Consultant consultant;
  final VoidCallback onTap;

  const ConsultantCard({
    super.key,
    required this.consultant,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(AppTheme.radiusXl),
        child: Padding(
          padding: const EdgeInsets.all(AppTheme.space4),
          child: Row(
            children: [
              // Avatar
              CircleAvatar(
                radius: 32,
                backgroundColor: AppColors.secondary,
                backgroundImage: consultant.profilePictureUrl != null
                    ? CachedNetworkImageProvider(consultant.profilePictureUrl!)
                    : null,
                child: consultant.profilePictureUrl == null
                    ? Text(
                        consultant.initials,
                        style: AppTypography.h4,
                      )
                    : null,
              ),

              const SizedBox(width: AppTheme.space3),

              // Info
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            consultant.displayName,
                            style: AppTypography.body.copyWith(
                              fontWeight: AppTypography.fontSemibold,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        if (consultant.isVerified)
                          const Icon(
                            Icons.verified,
                            size: 16,
                            color: AppColors.info,
                          ),
                      ],
                    ),
                    const SizedBox(height: AppTheme.space1),
                    if (consultant.headline != null)
                      Text(
                        consultant.headline!,
                        style: AppTypography.bodySmall,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    const SizedBox(height: AppTheme.space2),
                    Row(
                      children: [
                        // Rating
                        if (consultant.rating != null) ...[
                          const Icon(
                            Icons.star,
                            size: 16,
                            color: AppColors.warning,
                          ),
                          const SizedBox(width: 2),
                          Text(
                            consultant.rating!.toStringAsFixed(1),
                            style: AppTypography.caption.copyWith(
                              fontWeight: AppTypography.fontMedium,
                            ),
                          ),
                          if (consultant.reviewCount != null)
                            Text(
                              ' (${consultant.reviewCount})',
                              style: AppTypography.caption,
                            ),
                          const SizedBox(width: AppTheme.space3),
                        ],
                        // Domain
                        if (consultant.domain != null)
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: AppTheme.space2,
                              vertical: 2,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.secondary,
                              borderRadius: BorderRadius.circular(
                                AppTheme.radiusSm,
                              ),
                            ),
                            child: Text(
                              consultant.domain!.name,
                              style: AppTypography.caption,
                            ),
                          ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(width: AppTheme.space3),

              // Price
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'from',
                    style: AppTypography.caption,
                  ),
                  Text(
                    CurrencyUtils.format(consultant.lowestPrice),
                    style: AppTypography.body.copyWith(
                      fontWeight: AppTypography.fontSemibold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
```

### 3.4 Consultant Profile Screen

Create `lib/features/explore/screens/consultant_profile_screen.dart`:

```dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_theme.dart';
import '../../../app/theme/app_typography.dart';
import '../../../core/utils/currency_utils.dart';
import '../../../domain/entities/consultant.dart';
import '../providers/explore_provider.dart';
import '../widgets/consultation_plan_card.dart';
import '../widgets/reviews_section.dart';

class ConsultantProfileScreen extends ConsumerWidget {
  final String consultantId;

  const ConsultantProfileScreen({
    super.key,
    required this.consultantId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final consultantAsync = ref.watch(consultantDetailProvider(consultantId));

    return Scaffold(
      body: consultantAsync.when(
        data: (consultant) => _buildContent(context, consultant),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Error: $error'),
              ElevatedButton(
                onPressed: () =>
                    ref.refresh(consultantDetailProvider(consultantId)),
                child: const Text('Retry'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContent(BuildContext context, Consultant consultant) {
    return CustomScrollView(
      slivers: [
        // App bar with image
        SliverAppBar(
          expandedHeight: 200,
          pinned: true,
          actions: [
            IconButton(
              icon: const Icon(Icons.favorite_border),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.share),
              onPressed: () {},
            ),
          ],
          flexibleSpace: FlexibleSpaceBar(
            background: Container(
              color: AppColors.secondary,
              child: Center(
                child: CircleAvatar(
                  radius: 60,
                  backgroundColor: AppColors.background,
                  backgroundImage: consultant.profilePictureUrl != null
                      ? CachedNetworkImageProvider(consultant.profilePictureUrl!)
                      : null,
                  child: consultant.profilePictureUrl == null
                      ? Text(
                          consultant.initials,
                          style: AppTypography.h1,
                        )
                      : null,
                ),
              ),
            ),
          ),
        ),

        // Content
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(AppTheme.space4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Name and verification
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        consultant.displayName,
                        style: AppTypography.h2,
                      ),
                    ),
                    if (consultant.isVerified)
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: AppTheme.space2,
                          vertical: AppTheme.space1,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.info.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(AppTheme.radiusSm),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(
                              Icons.verified,
                              size: 16,
                              color: AppColors.info,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              'Verified',
                              style: AppTypography.caption.copyWith(
                                color: AppColors.info,
                              ),
                            ),
                          ],
                        ),
                      ),
                  ],
                ),

                if (consultant.headline != null) ...[
                  const SizedBox(height: AppTheme.space1),
                  Text(
                    consultant.headline!,
                    style: AppTypography.body.copyWith(
                      color: AppColors.mutedForeground,
                    ),
                  ),
                ],

                const SizedBox(height: AppTheme.space2),

                // Rating
                if (consultant.rating != null)
                  Row(
                    children: [
                      const Icon(Icons.star, color: AppColors.warning, size: 20),
                      const SizedBox(width: 4),
                      Text(
                        consultant.rating!.toStringAsFixed(1),
                        style: AppTypography.body.copyWith(
                          fontWeight: AppTypography.fontSemibold,
                        ),
                      ),
                      Text(
                        ' (${consultant.reviewCount ?? 0} reviews)',
                        style: AppTypography.bodySmall,
                      ),
                    ],
                  ),

                const SizedBox(height: AppTheme.space4),
                const Divider(),
                const SizedBox(height: AppTheme.space4),

                // About section
                Text('About', style: AppTypography.h4),
                const SizedBox(height: AppTheme.space2),
                Text(
                  consultant.bio ?? 'No bio provided.',
                  style: AppTypography.body,
                ),

                if (consultant.languages.isNotEmpty) ...[
                  const SizedBox(height: AppTheme.space3),
                  Text(
                    'Languages: ${consultant.languages.join(", ")}',
                    style: AppTypography.bodySmall,
                  ),
                ],

                if (consultant.toolsAndTechnologies.isNotEmpty) ...[
                  const SizedBox(height: AppTheme.space3),
                  Wrap(
                    spacing: AppTheme.space2,
                    runSpacing: AppTheme.space2,
                    children: consultant.toolsAndTechnologies.map((tool) {
                      return Chip(
                        label: Text(tool),
                        visualDensity: VisualDensity.compact,
                      );
                    }).toList(),
                  ),
                ],

                const SizedBox(height: AppTheme.space4),
                const Divider(),
                const SizedBox(height: AppTheme.space4),

                // Consultation Plans
                Text('Consultation Plans', style: AppTypography.h4),
                const SizedBox(height: AppTheme.space3),
                ...consultant.consultationPlans.map((plan) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: AppTheme.space3),
                    child: ConsultationPlanCard(
                      plan: plan,
                      onBook: () {
                        context.pushNamed(
                          'booking',
                          pathParameters: {
                            'consultantId': consultant.id,
                            'planId': plan.id,
                          },
                        );
                      },
                    ),
                  );
                }),

                const SizedBox(height: AppTheme.space4),

                // Reviews section
                ReviewsSection(consultantId: consultant.id),

                const SizedBox(height: AppTheme.space10),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
```

---

## 4. Navigation Update

Add explore routes to `lib/app/router.dart`:

```dart
// Add imports
import '../features/explore/screens/explore_screen.dart';
import '../features/explore/screens/consultant_profile_screen.dart';

// Add routes inside ShellRoute
GoRoute(
  path: '/explore',
  name: 'explore',
  builder: (context, state) => const ExploreScreen(),
  routes: [
    GoRoute(
      path: 'consultant/:consultantId',
      name: 'consultantProfile',
      builder: (context, state) => ConsultantProfileScreen(
        consultantId: state.pathParameters['consultantId']!,
      ),
    ),
  ],
),
```

---

## 5. Acceptance Criteria

- [ ] Explore screen displays list of consultants
- [ ] Search functionality filters consultants
- [ ] Domain filter chips work correctly
- [ ] Consultant cards show key info (name, rating, price)
- [ ] Tapping consultant opens profile screen
- [ ] Profile shows full details and plans
- [ ] Reviews section loads and displays
- [ ] Pull-to-refresh works
- [ ] Empty states display correctly
- [ ] Error handling shows appropriate messages

---

## 6. Next Phase

Proceed to **Phase 5: Booking & Scheduling** to implement:
- Calendar availability view
- Time slot selection
- Booking request flow
