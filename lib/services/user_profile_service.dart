import 'package:supabase_flutter/supabase_flutter.dart';
import '../models/user_profile.dart';
import '../models/auth/user_model.dart' as auth_model;
import 'logging_service.dart';

class UserProfileService {
  static final UserProfileService _instance = UserProfileService._internal();
  factory UserProfileService() => _instance;
  UserProfileService._internal();

  SupabaseClient get _client => Supabase.instance.client;

  /// Get user profile by user ID
  Future<UserProfile?> getUserProfile(String userId) async {
    try {
      logger.info('UserProfile: Fetching profile for user $userId');
      
      final response = await _client
          .from('user_profiles')
          .select()
          .eq('user_id', userId)
          .maybeSingle();

      if (response == null) {
        logger.info('UserProfile: No profile found for user $userId');
        return null;
      }

      final profile = UserProfile.fromJson(response);
      logger.info('UserProfile: Successfully fetched profile for user $userId');
      return profile;
    } catch (e) {
      logger.error('UserProfile: Failed to fetch profile for user $userId', e);
      throw Exception('Failed to load user profile: ${e.toString()}');
    }
  }

  /// Create a new user profile
  Future<UserProfile> createUserProfile(UserProfile profile) async {
    try {
      logger.info('UserProfile: Creating profile for user ${profile.userId}');
      
      final data = profile.toJson();
      data['created_at'] = DateTime.now().toIso8601String();
      data['updated_at'] = DateTime.now().toIso8601String();
      
      final response = await _client
          .from('user_profiles')
          .insert(data)
          .select()
          .single();

      final createdProfile = UserProfile.fromJson(response);
      logger.info('UserProfile: Successfully created profile for user ${profile.userId}');
      return createdProfile;
    } catch (e) {
      logger.error('UserProfile: Failed to create profile for user ${profile.userId}', e);
      throw Exception('Failed to create user profile: ${e.toString()}');
    }
  }

  /// Update an existing user profile
  Future<UserProfile> updateUserProfile(UserProfile profile) async {
    try {
      logger.info('UserProfile: Updating profile ${profile.id}');
      
      final data = profile.toJson();
      data['updated_at'] = DateTime.now().toIso8601String();
      
      final response = await _client
          .from('user_profiles')
          .update(data)
          .eq('id', profile.id)
          .select()
          .single();

      final updatedProfile = UserProfile.fromJson(response);
      logger.info('UserProfile: Successfully updated profile ${profile.id}');
      return updatedProfile;
    } catch (e) {
      logger.error('UserProfile: Failed to update profile ${profile.id}', e);
      throw Exception('Failed to update user profile: ${e.toString()}');
    }
  }

  /// Get or create user profile for a user
  Future<UserProfile> getOrCreateUserProfile(auth_model.User user) async {
    try {
      // Try to get existing profile
      UserProfile? profile = await getUserProfile(user.id);
      
      if (profile != null) {
        return profile;
      }

      // Create new profile with basic info from user
      logger.info('UserProfile: Creating new profile for user ${user.id}');
      
      final newProfile = UserProfile(
        id: _generateProfileId(),
        userId: user.id,
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      );

      return await createUserProfile(newProfile);
    } catch (e) {
      logger.error('UserProfile: Failed to get or create profile for user ${user.id}', e);
      throw Exception('Failed to get or create user profile: ${e.toString()}');
    }
  }

  /// Update health metrics
  Future<UserProfile> updateHealthMetrics(String profileId, HealthMetrics metrics) async {
    try {
      logger.info('UserProfile: Updating health metrics for profile $profileId');
      
      final data = {
        'health_metrics': metrics.toJson(),
        'updated_at': DateTime.now().toIso8601String(),
      };
      
      final response = await _client
          .from('user_profiles')
          .update(data)
          .eq('id', profileId)
          .select()
          .single();

      final updatedProfile = UserProfile.fromJson(response);
      logger.info('UserProfile: Successfully updated health metrics for profile $profileId');
      return updatedProfile;
    } catch (e) {
      logger.error('UserProfile: Failed to update health metrics for profile $profileId', e);
      throw Exception('Failed to update health metrics: ${e.toString()}');
    }
  }

  /// Add or update chronic disease
  Future<UserProfile> updateChronicDiseases(String profileId, List<String> diseases) async {
    try {
      logger.info('UserProfile: Updating chronic diseases for profile $profileId');
      
      final data = {
        'chronic_diseases': diseases,
        'updated_at': DateTime.now().toIso8601String(),
      };
      
      final response = await _client
          .from('user_profiles')
          .update(data)
          .eq('id', profileId)
          .select()
          .single();

      final updatedProfile = UserProfile.fromJson(response);
      logger.info('UserProfile: Successfully updated chronic diseases for profile $profileId');
      return updatedProfile;
    } catch (e) {
      logger.error('UserProfile: Failed to update chronic diseases for profile $profileId', e);
      throw Exception('Failed to update chronic diseases: ${e.toString()}');
    }
  }

  /// Add or update allergies
  Future<UserProfile> updateAllergies(String profileId, List<String> allergies) async {
    try {
      logger.info('UserProfile: Updating allergies for profile $profileId');
      
      final data = {
        'allergies': allergies,
        'updated_at': DateTime.now().toIso8601String(),
      };
      
      final response = await _client
          .from('user_profiles')
          .update(data)
          .eq('id', profileId)
          .select()
          .single();

      final updatedProfile = UserProfile.fromJson(response);
      logger.info('UserProfile: Successfully updated allergies for profile $profileId');
      return updatedProfile;
    } catch (e) {
      logger.error('UserProfile: Failed to update allergies for profile $profileId', e);
      throw Exception('Failed to update allergies: ${e.toString()}');
    }
  }

  /// Add or update surgeries
  Future<UserProfile> updateSurgeries(String profileId, List<Surgery> surgeries) async {
    try {
      logger.info('UserProfile: Updating surgeries for profile $profileId');
      
      final data = {
        'surgeries': surgeries.map((s) => s.toJson()).toList(),
        'updated_at': DateTime.now().toIso8601String(),
      };
      
      final response = await _client
          .from('user_profiles')
          .update(data)
          .eq('id', profileId)
          .select()
          .single();

      final updatedProfile = UserProfile.fromJson(response);
      logger.info('UserProfile: Successfully updated surgeries for profile $profileId');
      return updatedProfile;
    } catch (e) {
      logger.error('UserProfile: Failed to update surgeries for profile $profileId', e);
      throw Exception('Failed to update surgeries: ${e.toString()}');
    }
  }

  /// Delete user profile
  Future<void> deleteUserProfile(String profileId) async {
    try {
      logger.info('UserProfile: Deleting profile $profileId');
      
      await _client
          .from('user_profiles')
          .delete()
          .eq('id', profileId);

      logger.info('UserProfile: Successfully deleted profile $profileId');
    } catch (e) {
      logger.error('UserProfile: Failed to delete profile $profileId', e);
      throw Exception('Failed to delete user profile: ${e.toString()}');
    }
  }

  /// Generate a unique profile ID
  String _generateProfileId() {
    return 'profile_${DateTime.now().millisecondsSinceEpoch}_${(DateTime.now().microsecond % 1000).toString().padLeft(3, '0')}';
  }
}

/// Exception for user profile operations
class UserProfileException implements Exception {
  final String message;
  final dynamic originalError;

  UserProfileException(this.message, [this.originalError]);

  @override
  String toString() => 'UserProfileException: $message';
}