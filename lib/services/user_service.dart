import 'package:supabase_flutter/supabase_flutter.dart';
import '../models/user.dart' as app_models;
import '../models/consultant_profile.dart';
import '../models/domain.dart';
import '../models/consultation_plan.dart';
import 'logging_service.dart';

/// Consolidated UserService based on schema.prisma
/// Handles all user operations, consultant queries, and consultation plans
/// This is the single service for all user-related database operations
class UserService {
  static final UserService _instance = UserService._internal();
  factory UserService() => _instance;
  UserService._internal();

  SupabaseClient get _client => Supabase.instance.client;

  //// USER OPERATIONS ////

  /// Get current user by ID
  Future<app_models.User?> getUserById(String userId) async {
    try {
      logger.info('UserService: Fetching user $userId');
      
      final response = await _client
          .from('users')
          .select()
          .eq('id', userId)
          .maybeSingle();

      if (response == null) {
        logger.info('UserService: User $userId not found');
        return null;
      }

      final user = app_models.User.fromJson(response);
      logger.info('UserService: Successfully fetched user ${user.email}');
      return user;
    } catch (e) {
      logger.error('UserService: Failed to fetch user $userId', e);
      throw Exception('Failed to fetch user: ${e.toString()}');
    }
  }

  /// Update user information
  Future<app_models.User> updateUser(String userId, Map<String, dynamic> userData) async {
    try {
      logger.info('UserService: Updating user $userId');
      
      final response = await _client
          .from('users')
          .update(userData)
          .eq('id', userId)
          .select()
          .single();

      final user = app_models.User.fromJson(response);
      logger.info('UserService: Successfully updated user ${user.email}');
      return user;
    } catch (e) {
      logger.error('UserService: Failed to update user $userId', e);
      throw Exception('Failed to update user: ${e.toString()}');
    }
  }

  //// CONSULTANT OPERATIONS ////

  /// Get consultants with their user info and domain details
  Future<List<ConsultantProfile>> getConsultants({
    String? domainId,
    String? search,
    int limit = 10,
  }) async {
    try {
      logger.info('UserService: Fetching consultants (limit: $limit)');
      
      var query = _client.from('ConsultantProfile').select('''
        id, description, qualifications, specialization, experience, rating,
        domainId, userId, createdAt, updatedAt,
        users!inner(id, name, email, image)
      ''');

      if (domainId != null) {
        query = query.eq('domainId', domainId);
      }

      final response = await query.limit(limit).order('rating', ascending: false);

      final consultants = response.map((item) {
        return ConsultantProfile.fromJson(item);
      }).toList();

      logger.info('UserService: Successfully fetched ${consultants.length} consultants');
      return consultants;
    } catch (e) {
      logger.error('UserService: Failed to fetch consultants', e);
      throw Exception('Failed to fetch consultants: ${e.toString()}');
    }
  }

  /// Get consultant by ID with full details
  Future<ConsultantProfile?> getConsultantById(String consultantId) async {
    try {
      logger.info('UserService: Fetching consultant $consultantId');
      
      final response = await _client
          .from('ConsultantProfile')
          .select('''
            id, description, qualifications, specialization, experience, rating,
            domainId, userId, createdAt, updatedAt,
            users!inner(id, name, email, image),
            Domain!inner(id, name)
          ''')
          .eq('id', consultantId)
          .maybeSingle();

      if (response == null) {
        logger.info('UserService: Consultant $consultantId not found');
        return null;
      }

      final consultant = ConsultantProfile.fromJson(response);

      logger.info('UserService: Successfully fetched consultant ${consultant.specialization}');
      return consultant;
    } catch (e) {
      logger.error('UserService: Failed to fetch consultant $consultantId', e);
      throw Exception('Failed to fetch consultant: ${e.toString()}');
    }
  }

  //// DOMAIN OPERATIONS ////

  /// Get all domains for filtering consultants
  Future<List<Domain>> getDomains() async {
    try {
      logger.info('UserService: Fetching domains');
      
      final response = await _client
          .from('Domain')
          .select('id, name, createdAt, updatedAt')
          .order('name');

      final domains = response.map((item) {
        return Domain(
          id: item['id'] as String,
          name: item['name'] as String,
          createdAt: item['createdAt'] != null
              ? DateTime.parse(item['createdAt'] as String)
              : DateTime.now(),
          updatedAt: item['updatedAt'] != null
              ? DateTime.parse(item['updatedAt'] as String)
              : DateTime.now(),
        );
      }).toList();

      logger.info('UserService: Successfully fetched ${domains.length} domains');
      return domains;
    } catch (e) {
      logger.error('UserService: Failed to fetch domains', e);
      throw Exception('Failed to fetch domains: ${e.toString()}');
    }
  }

  //// CONSULTATION PLAN OPERATIONS ////

  /// Get consultation plans by consultant ID
  Future<List<ConsultationPlan>> getConsultationPlansByConsultant(String consultantProfileId) async {
    try {
      logger.info('UserService: Fetching consultation plans for consultant $consultantProfileId');
      
      final response = await _client
          .from('ConsultationPlan')
          .select('*')
          .eq('consultantProfileId', consultantProfileId)
          .order('price');

      final plans = response.map((item) {
        return ConsultationPlan(
          id: item['id'] as String,
          title: item['title'] as String,
          description: item['description'] as String?,
          durationInHours: (item['durationInHours'] as num?)?.toDouble() ?? 1.0,
          price: item['price'] as int,
          language: item['language'] as String? ?? 'English',
          level: item['level'] as String? ?? 'Beginner',
          prerequisites: item['prerequisites'] as String?,
          materialProvided: item['materialProvided'] as String?,
          learningOutcomes: (item['learningOutcomes'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              [],
          consultantProfileId: item['consultantProfileId'] as String,
          createdAt: item['createdAt'] != null
              ? DateTime.parse(item['createdAt'] as String)
              : DateTime.now(),
          updatedAt: item['updatedAt'] != null
              ? DateTime.parse(item['updatedAt'] as String)
              : DateTime.now(),
        );
      }).toList();

      logger.info('UserService: Successfully fetched ${plans.length} consultation plans');
      return plans;
    } catch (e) {
      logger.error('UserService: Failed to fetch consultation plans', e);
      throw Exception('Failed to fetch consultation plans: ${e.toString()}');
    }
  }

  /// Get consultation plan by ID
  Future<ConsultationPlan?> getConsultationPlanById(String planId) async {
    try {
      logger.info('UserService: Fetching consultation plan $planId');
      
      final response = await _client
          .from('ConsultationPlan')
          .select('*')
          .eq('id', planId)
          .maybeSingle();

      if (response == null) {
        logger.info('UserService: Consultation plan $planId not found');
        return null;
      }

      final plan = ConsultationPlan(
        id: response['id'] as String,
        title: response['title'] as String,
        description: response['description'] as String?,
        durationInHours: (response['durationInHours'] as num?)?.toDouble() ?? 1.0,
        price: response['price'] as int,
        language: response['language'] as String? ?? 'English',
        level: response['level'] as String? ?? 'Beginner',
        prerequisites: response['prerequisites'] as String?,
        materialProvided: response['materialProvided'] as String?,
        learningOutcomes: (response['learningOutcomes'] as List<dynamic>?)
                ?.map((e) => e as String)
                .toList() ??
            [],
        consultantProfileId: response['consultantProfileId'] as String,
        createdAt: response['createdAt'] != null
            ? DateTime.parse(response['createdAt'] as String)
            : DateTime.now(),
        updatedAt: response['updatedAt'] != null
            ? DateTime.parse(response['updatedAt'] as String)
            : DateTime.now(),
      );

      logger.info('UserService: Successfully fetched consultation plan ${plan.title}');
      return plan;
    } catch (e) {
      logger.error('UserService: Failed to fetch consultation plan $planId', e);
      throw Exception('Failed to fetch consultation plan: ${e.toString()}');
    }
  }
}