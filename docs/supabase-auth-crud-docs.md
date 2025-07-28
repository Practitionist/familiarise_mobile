# Flutter JWT Authentication + Supabase CRUD Documentation

## Overview

This documentation covers the implementation of custom JWT authentication integrated with Supabase database operations for the Familiarise mobile Flutter application. The solution provides secure authentication while leveraging Supabase for efficient database CRUD operations.

## Architecture

### Authentication Flow
```
User Login ’ Backend JWT Generation ’ Secure Storage ’ API Requests ’ Supabase Operations
```

### Key Components
- **Custom JWT Authentication**: Independent of Supabase Auth
- **Secure Token Storage**: Using FlutterSecureStorage
- **Riverpod State Management**: Reactive authentication state
- **Dio HTTP Client**: Automatic JWT attachment
- **Supabase Integration**: Database operations with JWT context

## Dependencies

```yaml
dependencies:
  flutter_riverpod: ^2.4.9          # State management
  flutter_secure_storage: ^9.0.0    # Secure token storage
  jwt_decode: ^0.3.1                 # JWT token parsing
  dio: ^5.3.2                        # HTTP client with interceptors
  supabase_flutter: ^2.8.0           # Database operations
```

## Core Models

### User Model
Matches the Prisma schema structure from `prisma/schema.prisma`:

```dart
class User {
  final String id;
  final String? name;
  final String? email;
  final DateTime? emailVerified;
  final String? image;
  final String? phone;
  final String? address;
  final bool onlineStatus;
  final String? currentTimezone;
  final bool? onboardingCompleted;
  final UserRole role;
  final String? consultantProfileId;
  final String? consulteeProfileId;
  final String? staffProfileId;
  final DateTime createdAt;
  final DateTime updatedAt;

  const User({
    required this.id,
    this.name,
    this.email,
    this.emailVerified,
    this.image,
    this.phone,
    this.address,
    required this.onlineStatus,
    this.currentTimezone,
    this.onboardingCompleted,
    required this.role,
    this.consultantProfileId,
    this.consulteeProfileId,
    this.staffProfileId,
    required this.createdAt,
    required this.updatedAt,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      emailVerified: json['emailVerified'] != null 
          ? DateTime.parse(json['emailVerified']) 
          : null,
      image: json['image'],
      phone: json['phone'],
      address: json['address'],
      onlineStatus: json['onlineStatus'] ?? false,
      currentTimezone: json['currentTimezone'],
      onboardingCompleted: json['onboardingCompleted'],
      role: UserRole.values.firstWhere(
        (e) => e.name.toUpperCase() == json['role']?.toUpperCase(),
        orElse: () => UserRole.CONSULTEE,
      ),
      consultantProfileId: json['consultantProfileId'],
      consulteeProfileId: json['consulteeProfileId'],
      staffProfileId: json['staffProfileId'],
      createdAt: DateTime.parse(json['createdAt']),
      updatedAt: DateTime.parse(json['updatedAt']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'emailVerified': emailVerified?.toIso8601String(),
      'image': image,
      'phone': phone,
      'address': address,
      'onlineStatus': onlineStatus,
      'currentTimezone': currentTimezone,
      'onboardingCompleted': onboardingCompleted,
      'role': role.name,
      'consultantProfileId': consultantProfileId,
      'consulteeProfileId': consulteeProfileId,
      'staffProfileId': staffProfileId,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
    };
  }
}

enum UserRole { CONSULTANT, CONSULTEE, ADMIN, STAFF }
```

### Authentication Models

```dart
// Login Request
class LoginRequest {
  final String email;
  final String password;

  const LoginRequest({
    required this.email,
    required this.password,
  });

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'password': password,
    };
  }
}

// Login Response
class LoginResponse {
  final String accessToken;
  final String refreshToken;
  final User user;
  final DateTime expiresAt;

  const LoginResponse({
    required this.accessToken,
    required this.refreshToken,
    required this.user,
    required this.expiresAt,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    return LoginResponse(
      accessToken: json['accessToken'],
      refreshToken: json['refreshToken'],
      user: User.fromJson(json['user']),
      expiresAt: DateTime.parse(json['expiresAt']),
    );
  }
}

// Register Request
class RegisterRequest {
  final String email;
  final String password;
  final String name;
  final String? phone;
  final UserRole role;

  const RegisterRequest({
    required this.email,
    required this.password,
    required this.name,
    this.phone,
    required this.role,
  });

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'password': password,
      'name': name,
      'phone': phone,
      'role': role.name,
    };
  }
}
```

## JWT Token Management

### JWT Token Manager
Handles secure storage and validation of JWT tokens:

```dart
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:jwt_decode/jwt_decode.dart';

class JwtTokenManager {
  static const String _accessTokenKey = 'access_token';
  static const String _refreshTokenKey = 'refresh_token';
  
  static const FlutterSecureStorage _storage = FlutterSecureStorage();

  // Store tokens securely
  static Future<void> storeTokens(String accessToken, String refreshToken) async {
    await Future.wait([
      _storage.write(key: _accessTokenKey, value: accessToken),
      _storage.write(key: _refreshTokenKey, value: refreshToken),
    ]);
  }

  // Retrieve tokens
  static Future<String?> getAccessToken() async {
    return await _storage.read(key: _accessTokenKey);
  }

  static Future<String?> getRefreshToken() async {
    return await _storage.read(key: _refreshTokenKey);
  }

  // Clear tokens (logout)
  static Future<void> clearTokens() async {
    await Future.wait([
      _storage.delete(key: _accessTokenKey),
      _storage.delete(key: _refreshTokenKey),
    ]);
  }

  // Token validation
  static bool isTokenValid(String token) {
    try {
      final payload = Jwt.parseJwt(token);
      return payload['exp'] != null;
    } catch (e) {
      return false;
    }
  }

  static bool isTokenExpired(String token) {
    try {
      return Jwt.isExpired(token);
    } catch (e) {
      return true;
    }
  }

  static Map<String, dynamic> decodeToken(String token) {
    try {
      return Jwt.parseJwt(token);
    } catch (e) {
      return {};
    }
  }

  // Get valid access token (refresh if needed)
  static Future<String?> getValidAccessToken() async {
    final accessToken = await getAccessToken();
    
    if (accessToken != null && !isTokenExpired(accessToken)) {
      return accessToken;
    }
    
    // Token is expired or null, attempt refresh
    // This would trigger the refresh logic in your auth service
    return null;
  }
}
```

## HTTP Client with JWT Interceptors

### Dio Client Setup
```dart
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class DioClient {
  static final DioClient _instance = DioClient._internal();
  factory DioClient() => _instance;
  DioClient._internal();

  late final Dio _dio;

  void initialize() {
    _dio = Dio(BaseOptions(
      baseUrl: dotenv.env['API_BASE_URL'] ?? 'http://localhost:3000',
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 3),
      headers: {
        'Content-Type': 'application/json',
      },
    ));

    _setupInterceptors();
  }

  void _setupInterceptors() {
    _dio.interceptors.add(AuthInterceptor());
    _dio.interceptors.add(LogInterceptor(
      requestBody: true,
      responseBody: true,
      logPrint: (obj) {
        print(obj);
      },
    ));
  }

  Dio get dio => _dio;

  // HTTP methods
  Future<Response> get(String path, {Map<String, dynamic>? queryParameters}) {
    return _dio.get(path, queryParameters: queryParameters);
  }

  Future<Response> post(String path, {dynamic data}) {
    return _dio.post(path, data: data);
  }

  Future<Response> put(String path, {dynamic data}) {
    return _dio.put(path, data: data);
  }

  Future<Response> delete(String path) {
    return _dio.delete(path);
  }
}
```

### Authentication Interceptor
```dart
import 'package:dio/dio.dart';

class AuthInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    // Skip auth for login/register endpoints
    if (_isAuthEndpoint(options.path)) {
      return handler.next(options);
    }

    // Add JWT token to requests
    final token = await JwtTokenManager.getValidAccessToken();
    if (token != null) {
      options.headers['Authorization'] = 'Bearer $token';
    }

    handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401) {
      // Token expired or invalid
      await _handleTokenRefresh(err, handler);
    } else {
      handler.next(err);
    }
  }

  bool _isAuthEndpoint(String path) {
    return path.contains('/auth/login') || 
           path.contains('/auth/register') || 
           path.contains('/auth/refresh');
  }

  Future<void> _handleTokenRefresh(DioException err, ErrorInterceptorHandler handler) async {
    try {
      final refreshToken = await JwtTokenManager.getRefreshToken();
      if (refreshToken == null) {
        // No refresh token, user needs to login again
        await JwtTokenManager.clearTokens();
        handler.next(err);
        return;
      }

      // Attempt to refresh token
      final response = await DioClient().post('/api/auth/refresh', data: {
        'refreshToken': refreshToken,
      });

      if (response.statusCode == 200) {
        final newAccessToken = response.data['accessToken'];
        final newRefreshToken = response.data['refreshToken'];
        
        await JwtTokenManager.storeTokens(newAccessToken, newRefreshToken);

        // Retry original request with new token
        final requestOptions = err.requestOptions;
        requestOptions.headers['Authorization'] = 'Bearer $newAccessToken';
        
        final retryResponse = await DioClient().dio.fetch(requestOptions);
        handler.resolve(retryResponse);
      } else {
        await JwtTokenManager.clearTokens();
        handler.next(err);
      }
    } catch (e) {
      await JwtTokenManager.clearTokens();
      handler.next(err);
    }
  }
}
```

## State Management with Riverpod

### Authentication State
```dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/foundation.dart';

@immutable
class AuthState {
  final User? user;
  final bool isLoading;
  final bool isAuthenticated;
  final String? error;

  const AuthState({
    this.user,
    this.isLoading = false,
    this.isAuthenticated = false,
    this.error,
  });

  AuthState copyWith({
    User? user,
    bool? isLoading,
    bool? isAuthenticated,
    String? error,
  }) {
    return AuthState(
      user: user ?? this.user,
      isLoading: isLoading ?? this.isLoading,
      isAuthenticated: isAuthenticated ?? this.isAuthenticated,
      error: error ?? this.error,
    );
  }
}

class AuthNotifier extends StateNotifier<AuthState> {
  AuthNotifier(this._authRepository) : super(const AuthState()) {
    _checkAuthStatus();
  }

  final AuthRepository _authRepository;

  Future<void> _checkAuthStatus() async {
    state = state.copyWith(isLoading: true);
    try {
      final user = await _authRepository.getCurrentUser();
      state = state.copyWith(
        user: user,
        isAuthenticated: user != null,
        isLoading: false,
        error: null,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        isAuthenticated: false,
        error: e.toString(),
      );
    }
  }

  Future<void> login(String email, String password) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final request = LoginRequest(email: email, password: password);
      final response = await _authRepository.login(request);
      
      state = state.copyWith(
        user: response.user,
        isAuthenticated: true,
        isLoading: false,
        error: null,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: e.toString(),
      );
    }
  }

  Future<void> register(RegisterRequest request) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final response = await _authRepository.register(request);
      
      state = state.copyWith(
        user: response.user,
        isAuthenticated: true,
        isLoading: false,
        error: null,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: e.toString(),
      );
    }
  }

  Future<void> logout() async {
    state = state.copyWith(isLoading: true);
    try {
      await _authRepository.logout();
      state = const AuthState();
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: e.toString(),
      );
    }
  }
}

// Providers
final authRepositoryProvider = Provider<AuthRepository>((ref) {
  return AuthRepositoryImpl();
});

final authProvider = StateNotifierProvider<AuthNotifier, AuthState>((ref) {
  return AuthNotifier(ref.read(authRepositoryProvider));
});

final currentUserProvider = Provider<User?>((ref) {
  return ref.watch(authProvider).user;
});

final isAuthenticatedProvider = Provider<bool>((ref) {
  return ref.watch(authProvider).isAuthenticated;
});
```

## Supabase Integration

### Custom Supabase Service
```dart
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseService {
  static SupabaseClient _getClientWithAuth(String? jwt) {
    return SupabaseClient(
      SupabaseConfig.supabaseUrl,
      SupabaseConfig.supabaseAnonKey,
      headers: jwt != null ? {'Authorization': 'Bearer $jwt'} : null,
    );
  }

  static Future<SupabaseClient> getAuthenticatedClient() async {
    final jwt = await JwtTokenManager.getValidAccessToken();
    return _getClientWithAuth(jwt);
  }

  // Generic CRUD operations
  static Future<List<T>> fetchAll<T>(
    String tableName,
    T Function(Map<String, dynamic>) fromJson,
  ) async {
    final client = await getAuthenticatedClient();
    final response = await client.from(tableName).select();
    return response.map<T>((item) => fromJson(item)).toList();
  }

  static Future<T?> fetchById<T>(
    String tableName,
    String id,
    T Function(Map<String, dynamic>) fromJson,
  ) async {
    final client = await getAuthenticatedClient();
    final response = await client
        .from(tableName)
        .select()
        .eq('id', id)
        .maybeSingle();
    
    return response != null ? fromJson(response) : null;
  }

  static Future<T> create<T>(
    String tableName,
    Map<String, dynamic> data,
    T Function(Map<String, dynamic>) fromJson,
  ) async {
    final client = await getAuthenticatedClient();
    final response = await client
        .from(tableName)
        .insert(data)
        .select()
        .single();
    
    return fromJson(response);
  }

  static Future<T> update<T>(
    String tableName,
    String id,
    Map<String, dynamic> data,
    T Function(Map<String, dynamic>) fromJson,
  ) async {
    final client = await getAuthenticatedClient();
    final response = await client
        .from(tableName)
        .update(data)
        .eq('id', id)
        .select()
        .single();
    
    return fromJson(response);
  }

  static Future<void> delete(String tableName, String id) async {
    final client = await getAuthenticatedClient();
    await client.from(tableName).delete().eq('id', id);
  }
}
```

## Authentication UI Components

### Auth Wrapper
```dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthWrapper extends ConsumerWidget {
  final Widget child;

  const AuthWrapper({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authProvider);

    if (authState.isLoading) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    if (!authState.isAuthenticated) {
      return const LoginScreen();
    }

    return child;
  }
}
```

### Login Screen
```dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _obscurePassword = true;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _login() async {
    if (_formKey.currentState!.validate()) {
      await ref.read(authProvider.notifier).login(
        _emailController.text.trim(),
        _passwordController.text,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  if (!value.contains('@')) {
                    return 'Please enter a valid email';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: const OutlineInputBorder(),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscurePassword ? Icons.visibility : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscurePassword = !_obscurePassword;
                      });
                    },
                  ),
                ),
                obscureText: _obscurePassword,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 24),
              if (authState.error != null)
                Container(
                  padding: const EdgeInsets.all(12),
                  margin: const EdgeInsets.only(bottom: 16),
                  decoration: BoxDecoration(
                    color: Colors.red.shade100,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    authState.error!,
                    style: TextStyle(color: Colors.red.shade800),
                  ),
                ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: authState.isLoading ? null : _login,
                  child: authState.isLoading
                      ? const CircularProgressIndicator()
                      : const Text('Login'),
                ),
              ),
              const SizedBox(height: 16),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/register');
                },
                child: const Text('Don\'t have an account? Register'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
```

## Error Handling

### Auth Exceptions
```dart
class AuthException implements Exception {
  final String message;
  final AuthErrorType type;

  const AuthException(this.message, this.type);

  @override
  String toString() => 'AuthException: $message';
}

enum AuthErrorType {
  invalidCredentials,
  networkError,
  tokenExpired,
  serverError,
  unknownError,
}

class AuthExceptionHandler {
  static AuthException handleError(dynamic error) {
    if (error is DioException) {
      switch (error.response?.statusCode) {
        case 401:
          return const AuthException(
            'Invalid credentials',
            AuthErrorType.invalidCredentials,
          );
        case 500:
          return const AuthException(
            'Server error occurred',
            AuthErrorType.serverError,
          );
        default:
          return const AuthException(
            'Network error occurred',
            AuthErrorType.networkError,
          );
      }
    }
    
    return const AuthException(
      'An unknown error occurred',
      AuthErrorType.unknownError,
    );
  }
}
```

## Testing

### Authentication Service Tests
```dart
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

void main() {
  group('AuthService Tests', () {
    late AuthService authService;
    late MockDioClient mockDioClient;
    late MockJwtTokenManager mockTokenManager;

    setUp(() {
      mockDioClient = MockDioClient();
      mockTokenManager = MockJwtTokenManager();
      authService = AuthService(mockDioClient, mockTokenManager);
    });

    test('should login successfully with valid credentials', () async {
      // Arrange
      final loginRequest = LoginRequest(
        email: 'test@example.com',
        password: 'password123',
      );
      final mockResponse = {
        'accessToken': 'mock_access_token',
        'refreshToken': 'mock_refresh_token',
        'user': {'id': '1', 'email': 'test@example.com'},
        'expiresAt': '2024-12-31T23:59:59.000Z',
      };

      when(mockDioClient.post('/api/auth/login', data: anyNamed('data')))
          .thenAnswer((_) async => Response(data: mockResponse));

      // Act
      final result = await authService.login(loginRequest);

      // Assert
      expect(result.accessToken, 'mock_access_token');
      expect(result.user.email, 'test@example.com');
      verify(mockTokenManager.storeTokens(
        'mock_access_token',
        'mock_refresh_token',
      )).called(1);
    });

    test('should throw exception with invalid credentials', () async {
      // Arrange
      final loginRequest = LoginRequest(
        email: 'test@example.com',
        password: 'wrong_password',
      );

      when(mockDioClient.post('/api/auth/login', data: anyNamed('data')))
          .thenThrow(DioException(
        requestOptions: RequestOptions(path: '/api/auth/login'),
        response: Response(statusCode: 401),
      ));

      // Act & Assert
      expect(
        () async => await authService.login(loginRequest),
        throwsA(isA<AuthException>()),
      );
    });
  });
}
```

## Security Best Practices

1. **Token Storage**: Use FlutterSecureStorage for JWT tokens
2. **Token Validation**: Check expiry before each request
3. **Automatic Refresh**: Handle token refresh seamlessly
4. **Input Validation**: Validate all user inputs
5. **Error Handling**: Never expose sensitive information in errors
6. **HTTPS Only**: Ensure all API communications use HTTPS
7. **Token Cleanup**: Clear tokens on logout or security events

## Deployment Considerations

1. **Environment Variables**: Use different configs for dev/staging/prod
2. **API Endpoints**: Configure proper base URLs for each environment
3. **Certificate Pinning**: Consider adding for production
4. **Obfuscation**: Enable code obfuscation for release builds
5. **Analytics**: Add proper error tracking and analytics

This documentation provides a comprehensive guide for implementing and maintaining the JWT authentication system with Supabase integration in your Flutter application.