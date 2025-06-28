import 'api_service.dart';

class UserService {
  static final UserService _instance = UserService._internal();
  factory UserService() => _instance;
  UserService._internal();

  final ApiService _apiService = ApiService();

  Future<Map<String, dynamic>> getCurrentUser() async {
    return await _apiService.get('/api/user');
  }

  Future<Map<String, dynamic>> updateUser(Map<String, dynamic> userData) async {
    return await _apiService.put('/api/user', userData);
  }

  Future<Map<String, dynamic>> getUserById(String userId) async {
    return await _apiService.get('/api/user/$userId');
  }

  Future<List<Map<String, dynamic>>> getConsultants({
    String? domain,
    String? search,
    int? limit,
    int? offset,
  }) async {
    final queryParams = <String, String>{};
    if (domain != null) queryParams['domain'] = domain;
    if (search != null) queryParams['search'] = search;
    if (limit != null) queryParams['limit'] = limit.toString();
    if (offset != null) queryParams['offset'] = offset.toString();

    final uri = Uri.parse('/api/user/consultants').replace(queryParameters: queryParams);
    final result = await _apiService.get(uri.toString());
    return List<Map<String, dynamic>>.from(result['data'] ?? []);
  }

  Future<Map<String, dynamic>> getConsultantById(String consultantId) async {
    return await _apiService.get('/api/user/consultants/$consultantId');
  }

  Future<Map<String, dynamic>> getConsultantMeta() async {
    return await _apiService.get('/api/user/consultants/meta');
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