import '../config/supabase_config.dart';

class ContentService {
  static final ContentService _instance = ContentService._internal();
  factory ContentService() => _instance;
  ContentService._internal();

  Future<List<Map<String, dynamic>>> getDomains() async {
    try {
      final response = await SupabaseConfig.client
          .from('domains')
          .select('*');
      
      return List<Map<String, dynamic>>.from(response);
    } catch (e) {
      // Log error in production app
      return [];
    }
  }

  Future<List<Map<String, dynamic>>> getSubdomains({String? domainId}) async {
    try {
      var query = SupabaseConfig.client
          .from('sub_domains')
          .select('*');

      if (domainId != null) {
        query = query.eq('domainId', domainId);
      }

      final response = await query;
      return List<Map<String, dynamic>>.from(response);
    } catch (e) {
      return [];
    }
  }

  Future<List<Map<String, dynamic>>> getTopics({
    String? domainId,
    String? subdomainId,
  }) async {
    try {
      final response = await SupabaseConfig.client
          .from('topics')
          .select('*');

      return List<Map<String, dynamic>>.from(response);
    } catch (e) {
      return [];
    }
  }

  Future<List<Map<String, dynamic>>> getTags({
    String? topicId,
    String? search,
  }) async {
    try {
      var query = SupabaseConfig.client
          .from('tags')
          .select('*');

      if (search != null) {
        query = query.ilike('name', '%$search%');
      }

      final response = await query;
      return List<Map<String, dynamic>>.from(response);
    } catch (e) {
      return [];
    }
  }
}