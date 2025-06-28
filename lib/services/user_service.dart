import 'api_service.dart';

class UserService {
  static final UserService _instance = UserService._internal();
  factory UserService() => _instance;
  UserService._internal();

  final ApiService _apiService = ApiService();

  Future<dynamic> getCurrentUser() async {
    return await _apiService.get('/api/user');
  }

  Future<dynamic> updateUser(Map<String, dynamic> userData) async {
    return await _apiService.put('/api/user', userData);
  }

  Future<dynamic> getUserById(String userId) async {
    return await _apiService.get('/api/user/$userId');
  }

  Future<dynamic> getConsultants({
    String? domain,
    String? subdomain,
    List<String>? tags,
    int? experience,
    String? search,
    String? sort = 'nameAsc',
    int page = 1,
    int limit = 10,
  }) async {
    final queryParams = <String, String>{};
    if (domain != null) queryParams['domain'] = domain;
    if (subdomain != null) queryParams['subdomain'] = subdomain;
    if (tags != null && tags.isNotEmpty) queryParams['tags'] = tags.join(',');
    if (experience != null) queryParams['experience'] = experience.toString();
    if (search != null) queryParams['search'] = search;
    if (sort != null) queryParams['sort'] = sort;
    queryParams['page'] = page.toString();
    queryParams['limit'] = limit.toString();

    final uri = Uri.parse('/user/consultants').replace(queryParameters: queryParams);
    return await _apiService.get(uri.toString());
  }

  Future<dynamic> getConsultantById(String consultantId) async {
    return await _apiService.get('/user/consultants/$consultantId');
  }

  Future<dynamic> getConsultantMeta() async {
    return await _apiService.get('/user/consultants/meta');
  }

  Future<List<Map<String, dynamic>>> getConsultees({
    int? limit,
    int? offset,
  }) async {
    final queryParams = <String, String>{};
    if (limit != null) queryParams['limit'] = limit.toString();
    if (offset != null) queryParams['offset'] = offset.toString();

    final uri = Uri.parse('/api/user/consultees').replace(queryParameters: queryParams);
    final result = await _apiService.get(uri.toString());
    return List<Map<String, dynamic>>.from(result['data'] ?? []);
  }

  Future<Map<String, dynamic>> getConsulteeById(String consulteeId) async {
    return await _apiService.get('/api/user/consultees/$consulteeId');
  }

  Future<List<Map<String, dynamic>>> getStaff({
    int? limit,
    int? offset,
  }) async {
    final queryParams = <String, String>{};
    if (limit != null) queryParams['limit'] = limit.toString();
    if (offset != null) queryParams['offset'] = offset.toString();

    final uri = Uri.parse('/api/user/staff').replace(queryParameters: queryParams);
    final result = await _apiService.get(uri.toString());
    return List<Map<String, dynamic>>.from(result['data'] ?? []);
  }

  Future<Map<String, dynamic>> getStaffById(String staffId) async {
    return await _apiService.get('/api/user/staff/$staffId');
  }
}