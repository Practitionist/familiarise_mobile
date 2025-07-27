import 'package:supabase_flutter/supabase_flutter.dart';
import '../models/consultant_profile.dart';
import '../models/domain.dart';

class ConsultantService {
  final SupabaseClient _supabase = Supabase.instance.client;

  /// Fetch all consultants with their user info and domain details
  Future<List<ConsultantProfile>> getConsultants({int limit = 10}) async {
    try {
      final response = await _supabase
          .from('ConsultantProfile')
          .select('''
            id,
            description,
            qualifications,
            specialization,
            experience,
            rating,
            domainId,
            userId,
            createdAt,
            updatedAt,
            users!inner(
              id,
              name,
              image
            ),
            Domain!inner(
              id,
              name
            )
          ''')
          .limit(limit)
          .order('rating', ascending: false);

      final List<dynamic> data = response as List<dynamic>;

      final consultants = data.map((item) {
        return ConsultantProfile(
          id: item['id'] as String,
          description: item['description'] as String?,
          qualifications: item['qualifications'] as String?,
          specialization: item['specialization'] as String?,
          experience: (item['experience'] as num?)?.toDouble(),
          rating: (item['rating'] as num?)?.toDouble() ?? 0.0,
          domainId: item['domainId'] as String,
          userId: item['userId'] as String,
          createdAt: DateTime.parse(item['createdAt'] as String),
          updatedAt: DateTime.parse(item['updatedAt'] as String),
          name: item['users']['name'] as String?,
          image: item['users']['image'] as String?,
          domainName: item['Domain']['name'] as String?,
          // We'll fetch these separately for now
          subDomains: [],
          tags: [],
          reviewCount: _calculateReviewCount((item['rating'] as num?)?.toDouble() ?? 0.0),
        );
      }).toList();

      // Fetch tags and subdomains for each consultant
      for (var consultant in consultants) {
        final tagsAndSubdomains = await _getConsultantTagsAndSubdomains(consultant.id);
        consultant = ConsultantProfile(
          id: consultant.id,
          description: consultant.description,
          qualifications: consultant.qualifications,
          specialization: consultant.specialization,
          experience: consultant.experience,
          rating: consultant.rating,
          domainId: consultant.domainId,
          userId: consultant.userId,
          createdAt: consultant.createdAt,
          updatedAt: consultant.updatedAt,
          name: consultant.name,
          image: consultant.image,
          domainName: consultant.domainName,
          subDomains: tagsAndSubdomains['subDomains'] ?? [],
          tags: tagsAndSubdomains['tags'] ?? [],
          reviewCount: consultant.reviewCount,
        );
      }

      return consultants;
    } catch (e) {
      // Error fetching consultants: $e
      return [];
    }
  }

  /// Get consultant by ID with full details
  Future<ConsultantProfile?> getConsultantById(String id) async {
    try {
      final response = await _supabase
          .from('ConsultantProfile')
          .select('''
            id,
            description,
            qualifications,
            specialization,
            experience,
            rating,
            domainId,
            userId,
            createdAt,
            updatedAt,
            users!inner(
              id,
              name,
              image
            ),
            Domain!inner(
              id,
              name
            )
          ''')
          .eq('id', id)
          .single();

      final tagsAndSubdomains = await _getConsultantTagsAndSubdomains(id);

      return ConsultantProfile(
        id: response['id'] as String,
        description: response['description'] as String?,
        qualifications: response['qualifications'] as String?,
        specialization: response['specialization'] as String?,
        experience: (response['experience'] as num?)?.toDouble(),
        rating: (response['rating'] as num?)?.toDouble() ?? 0.0,
        domainId: response['domainId'] as String,
        userId: response['userId'] as String,
        createdAt: DateTime.parse(response['createdAt'] as String),
        updatedAt: DateTime.parse(response['updatedAt'] as String),
        name: response['users']['name'] as String?,
        image: response['users']['image'] as String?,
        domainName: response['Domain']['name'] as String?,
        subDomains: tagsAndSubdomains['subDomains'] ?? [],
        tags: tagsAndSubdomains['tags'] ?? [],
        reviewCount: _calculateReviewCount((response['rating'] as num?)?.toDouble() ?? 0.0),
      );
    } catch (e) {
      // Error fetching consultant by ID: $e
      return null;
    }
  }

  /// Fetch domains
  Future<List<Domain>> getDomains() async {
    try {
      final response = await _supabase
          .from('Domain')
          .select('*')
          .order('name');

      final List<dynamic> data = response as List<dynamic>;

      return data.map((item) {
        return Domain(
          id: item['id'] as String,
          name: item['name'] as String,
          createdAt: DateTime.parse(item['createdAt'] as String),
          updatedAt: DateTime.parse(item['updatedAt'] as String),
        );
      }).toList();
    } catch (e) {
      // Error fetching domains: $e
      return [];
    }
  }

  /// Get tags and subdomains for a specific consultant
  Future<Map<String, List<String>>> _getConsultantTagsAndSubdomains(String consultantId) async {
    try {
      // Fetch tags
      final tagsResponse = await _supabase
          .from('_ConsultantProfileToTag')
          .select('''
            Tag!inner(
              name
            )
          ''')
          .eq('A', consultantId);

      final tags = (tagsResponse as List<dynamic>)
          .map((item) => item['Tag']['name'] as String)
          .toList();

      // Fetch subdomains
      final subdomainsResponse = await _supabase
          .from('_ConsultantProfileToSubDomain')
          .select('''
            SubDomain!inner(
              name
            )
          ''')
          .eq('A', consultantId);

      final subdomains = (subdomainsResponse as List<dynamic>)
          .map((item) => item['SubDomain']['name'] as String)
          .toList();

      return {
        'tags': tags,
        'subDomains': subdomains,
      };
    } catch (e) {
      // Error fetching tags and subdomains: $e
      return {
        'tags': <String>[],
        'subDomains': <String>[],
      };
    }
  }

  /// Calculate approximate review count based on rating
  int _calculateReviewCount(double rating) {
    // Simple heuristic: higher rated consultants tend to have more reviews
    if (rating >= 4.5) return (80 + (rating * 20)).round();
    if (rating >= 4.0) return (60 + (rating * 15)).round();
    if (rating >= 3.5) return (40 + (rating * 10)).round();
    if (rating >= 3.0) return (20 + (rating * 8)).round();
    return (rating * 10).round();
  }

  /// Search consultants by name, specialization, or domain
  Future<List<ConsultantProfile>> searchConsultants(String query) async {
    try {
      final response = await _supabase
          .from('ConsultantProfile')
          .select('''
            id,
            description,
            qualifications,
            specialization,
            experience,
            rating,
            domainId,
            userId,
            createdAt,
            updatedAt,
            users!inner(
              id,
              name,
              image
            ),
            Domain!inner(
              id,
              name
            )
          ''')
          .or('specialization.ilike.%$query%,users.name.ilike.%$query%,Domain.name.ilike.%$query%')
          .limit(20)
          .order('rating', ascending: false);

      final List<dynamic> data = response as List<dynamic>;

      return data.map((item) {
        return ConsultantProfile(
          id: item['id'] as String,
          description: item['description'] as String?,
          qualifications: item['qualifications'] as String?,
          specialization: item['specialization'] as String?,
          experience: (item['experience'] as num?)?.toDouble(),
          rating: (item['rating'] as num?)?.toDouble() ?? 0.0,
          domainId: item['domainId'] as String,
          userId: item['userId'] as String,
          createdAt: DateTime.parse(item['createdAt'] as String),
          updatedAt: DateTime.parse(item['updatedAt'] as String),
          name: item['users']['name'] as String?,
          image: item['users']['image'] as String?,
          domainName: item['Domain']['name'] as String?,
          subDomains: [],
          tags: [],
          reviewCount: _calculateReviewCount((item['rating'] as num?)?.toDouble() ?? 0.0),
        );
      }).toList();
    } catch (e) {
      // Error searching consultants: $e
      return [];
    }
  }
} 