import 'api_service.dart';

class AuthService {
  static final AuthService _instance = AuthService._internal();
  factory AuthService() => _instance;
  AuthService._internal();

  final ApiService _apiService = ApiService();

  Future<Map<String, dynamic>> login(String email, String password) async {
    return await _apiService.post('/api/auth/login', {
      'email': email,
      'password': password,
    });
  }

  Future<Map<String, dynamic>> register({
    required String email,
    required String password,
    required String name,
    String? phone,
  }) async {
    return await _apiService.post('/api/auth/register', {
      'email': email,
      'password': password,
      'name': name,
      if (phone != null) 'phone': phone,
    });
  }

  Future<Map<String, dynamic>> forgotPassword(String email) async {
    return await _apiService.post('/api/auth/forgot-password', {
      'email': email,
    });
  }

  Future<Map<String, dynamic>> resetPassword({
    required String token,
    required String newPassword,
  }) async {
    return await _apiService.post('/api/auth/reset-password', {
      'token': token,
      'password': newPassword,
    });
  }

  Future<void> logout() async {
    // Clear local storage/tokens here
    // This will depend on your authentication implementation
  }
}