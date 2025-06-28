import '../config/supabase_config.dart';

class UserService {
  static final UserService _instance = UserService._internal();
  factory UserService() => _instance;
  UserService._internal();

  Future<Map<String, dynamic>> getCurrentUser() async {
    final response = await SupabaseConfig.client
        .from('users')
        .select()
        .limit(1)
        .single();
    return response;
  }

  Future<Map<String, dynamic>> updateUser(String userId, Map<String, dynamic> userData) async {
    final response = await SupabaseConfig.client
        .from('users')
        .update(userData)
        .eq('id', userId)
        .select()
        .single();
    return response;
  }

  Future<Map<String, dynamic>> getUserById(String userId) async {
    final response = await SupabaseConfig.client
        .from('users')
        .select()
        .eq('id', userId)
        .single();
    return response;
  }

  Future<Map<String, dynamic>> getConsultants({
    String? domain,
    String? subdomain,
    List<String>? tags,
    int? experience,
    String? search,
    String? sort = 'nameAsc',
    int page = 1,
    int limit = 10,
  }) async {
    try {
      // First, try a simple query to get consultant profiles
      final response = await SupabaseConfig.client
          .from('consultant_profiles')
          .select('*')
          .limit(limit);

      print('Raw Supabase response: $response');

      return {
        'data': response,
        'meta': {
          'total': response.length,
          'page': page,
          'limit': limit,
          'totalPages': 1,
        },
      };
    } catch (e) {
      print('Supabase error: $e');
      // Return empty result on error
      return {
        'data': [],
        'meta': {
          'total': 0,
          'page': page,
          'limit': limit,
          'totalPages': 0,
        },
      };
    }
  }

  Future<Map<String, dynamic>> getConsultantById(String consultantId) async {
    final response = await SupabaseConfig.client
        .from('consultant_profiles')
        .select('''
          *,
          user:users(*),
          domain:domains(*),
          subDomains:sub_domains(*),
          tags:tags(*),
          reviews:consultant_reviews(*)
        ''')
        .eq('id', consultantId)
        .single();
    return response;
  }

  Future<List<Map<String, dynamic>>> getConsultees({
    int? limit,
    int? offset,
  }) async {
    final response = await SupabaseConfig.client
        .from('consultee_profiles')
        .select('*, user:users(*)')
        .limit(limit ?? 10);

    return List<Map<String, dynamic>>.from(response);
  }

  Future<Map<String, dynamic>> getConsulteeById(String consulteeId) async {
    final response = await SupabaseConfig.client
        .from('consultee_profiles')
        .select('*, user:users(*)')
        .eq('id', consulteeId)
        .single();
    return response;
  }

  Future<List<Map<String, dynamic>>> getStaff({
    int? limit,
    int? offset,
  }) async {
    final response = await SupabaseConfig.client
        .from('staff_profiles')
        .select('*, user:users(*)')
        .limit(limit ?? 10);

    return List<Map<String, dynamic>>.from(response);
  }

  Future<Map<String, dynamic>> getStaffById(String staffId) async {
    final response = await SupabaseConfig.client
        .from('staff_profiles')
        .select('*, user:users(*)')
        .eq('id', staffId)
        .single();
    return response;
  }
}