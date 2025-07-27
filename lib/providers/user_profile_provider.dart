import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/user_profile.dart';
import '../models/auth/user_model.dart' as auth_model;
import '../services/user_profile_service.dart';
import '../services/logging_service.dart';
import 'auth/auth_state_provider.dart';

// User Profile State
class UserProfileState {
  final UserProfile? profile;
  final bool isLoading;
  final String? error;
  final bool isInitialized;

  const UserProfileState({
    this.profile,
    this.isLoading = false,
    this.error,
    this.isInitialized = false,
  });

  UserProfileState copyWith({
    UserProfile? profile,
    bool? isLoading,
    String? error,
    bool? isInitialized,
  }) {
    return UserProfileState(
      profile: profile ?? this.profile,
      isLoading: isLoading ?? this.isLoading,
      error: error,
      isInitialized: isInitialized ?? this.isInitialized,
    );
  }
}

// User Profile Notifier
class UserProfileNotifier extends StateNotifier<UserProfileState> {
  UserProfileNotifier(this._userProfileService) : super(const UserProfileState());

  final UserProfileService _userProfileService;

  // Load user profile for current user
  Future<void> loadUserProfile(auth_model.User user) async {
    if (state.isLoading) return; // Prevent multiple concurrent loads

    state = state.copyWith(isLoading: true, error: null);
    
    try {
      logger.info('UserProfileProvider: Loading profile for user ${user.id}');
      
      final profile = await _userProfileService.getOrCreateUserProfile(user);
      
      state = state.copyWith(
        profile: profile,
        isLoading: false,
        isInitialized: true,
        error: null,
      );
      
      logger.info('UserProfileProvider: Successfully loaded profile for user ${user.id}');
    } catch (e) {
      logger.error('UserProfileProvider: Failed to load profile for user ${user.id}', e);
      
      state = state.copyWith(
        isLoading: false,
        isInitialized: true,
        error: e.toString(),
      );
    }
  }

  // Update basic profile information
  Future<void> updateBasicInfo({
    String? gender,
    DateTime? dateOfBirth,
    String? bloodType,
    int? height,
    int? weight,
  }) async {
    if (state.profile == null) {
      throw Exception('No profile loaded');
    }

    state = state.copyWith(isLoading: true, error: null);

    try {
      final updatedProfile = state.profile!.copyWith(
        gender: gender,
        dateOfBirth: dateOfBirth,
        bloodType: bloodType,
        height: height,
        weight: weight,
      );

      final savedProfile = await _userProfileService.updateUserProfile(updatedProfile);
      
      state = state.copyWith(
        profile: savedProfile,
        isLoading: false,
        error: null,
      );
      
      logger.info('UserProfileProvider: Successfully updated basic info');
    } catch (e) {
      logger.error('UserProfileProvider: Failed to update basic info', e);
      
      state = state.copyWith(
        isLoading: false,
        error: e.toString(),
      );
      rethrow;
    }
  }

  // Update health metrics
  Future<void> updateHealthMetrics(HealthMetrics metrics) async {
    if (state.profile == null) {
      throw Exception('No profile loaded');
    }

    state = state.copyWith(isLoading: true, error: null);

    try {
      final savedProfile = await _userProfileService.updateHealthMetrics(
        state.profile!.id,
        metrics,
      );
      
      state = state.copyWith(
        profile: savedProfile,
        isLoading: false,
        error: null,
      );
      
      logger.info('UserProfileProvider: Successfully updated health metrics');
    } catch (e) {
      logger.error('UserProfileProvider: Failed to update health metrics', e);
      
      state = state.copyWith(
        isLoading: false,
        error: e.toString(),
      );
      rethrow;
    }
  }

  // Update chronic diseases
  Future<void> updateChronicDiseases(List<String> diseases) async {
    if (state.profile == null) {
      throw Exception('No profile loaded');
    }

    state = state.copyWith(isLoading: true, error: null);

    try {
      final savedProfile = await _userProfileService.updateChronicDiseases(
        state.profile!.id,
        diseases,
      );
      
      state = state.copyWith(
        profile: savedProfile,
        isLoading: false,
        error: null,
      );
      
      logger.info('UserProfileProvider: Successfully updated chronic diseases');
    } catch (e) {
      logger.error('UserProfileProvider: Failed to update chronic diseases', e);
      
      state = state.copyWith(
        isLoading: false,
        error: e.toString(),
      );
      rethrow;
    }
  }

  // Update allergies
  Future<void> updateAllergies(List<String> allergies) async {
    if (state.profile == null) {
      throw Exception('No profile loaded');
    }

    state = state.copyWith(isLoading: true, error: null);

    try {
      final savedProfile = await _userProfileService.updateAllergies(
        state.profile!.id,
        allergies,
      );
      
      state = state.copyWith(
        profile: savedProfile,
        isLoading: false,
        error: null,
      );
      
      logger.info('UserProfileProvider: Successfully updated allergies');
    } catch (e) {
      logger.error('UserProfileProvider: Failed to update allergies', e);
      
      state = state.copyWith(
        isLoading: false,
        error: e.toString(),
      );
      rethrow;
    }
  }

  // Update surgeries
  Future<void> updateSurgeries(List<Surgery> surgeries) async {
    if (state.profile == null) {
      throw Exception('No profile loaded');
    }

    state = state.copyWith(isLoading: true, error: null);

    try {
      final savedProfile = await _userProfileService.updateSurgeries(
        state.profile!.id,
        surgeries,
      );
      
      state = state.copyWith(
        profile: savedProfile,
        isLoading: false,
        error: null,
      );
      
      logger.info('UserProfileProvider: Successfully updated surgeries');
    } catch (e) {
      logger.error('UserProfileProvider: Failed to update surgeries', e);
      
      state = state.copyWith(
        isLoading: false,
        error: e.toString(),
      );
      rethrow;
    }
  }

  // Clear profile (on logout)
  void clearProfile() {
    state = const UserProfileState();
    logger.info('UserProfileProvider: Profile cleared');
  }

  // Refresh profile
  Future<void> refreshProfile(auth_model.User user) async {
    await loadUserProfile(user);
  }
}

// Providers
final userProfileServiceProvider = Provider<UserProfileService>((ref) {
  return UserProfileService();
});

final userProfileProvider = StateNotifierProvider<UserProfileNotifier, UserProfileState>((ref) {
  final userProfileService = ref.read(userProfileServiceProvider);
  return UserProfileNotifier(userProfileService);
});

// Auto-load profile when user changes
final autoLoadUserProfileProvider = Provider<void>((ref) {
  final currentUser = ref.watch(currentUserProvider);
  final userProfileNotifier = ref.read(userProfileProvider.notifier);
  
  if (currentUser != null) {
    // Load profile when user is authenticated
    Future.microtask(() {
      userProfileNotifier.loadUserProfile(currentUser);
    });
  } else {
    // Clear profile when user logs out
    userProfileNotifier.clearProfile();
  }
});

// Computed providers
final currentUserProfileProvider = Provider<UserProfile?>((ref) {
  // Watch the auto-load provider to trigger loading
  ref.watch(autoLoadUserProfileProvider);
  return ref.watch(userProfileProvider).profile;
});

final userProfileLoadingProvider = Provider<bool>((ref) {
  return ref.watch(userProfileProvider).isLoading;
});

final userProfileErrorProvider = Provider<String?>((ref) {
  return ref.watch(userProfileProvider).error;
});