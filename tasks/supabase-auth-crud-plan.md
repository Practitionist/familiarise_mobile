# Flutter JWT Authentication + Supabase CRUD - Task Checklist

## Phase 1: Dependencies & Configuration Setup

### 1.1 Package Dependencies
- [ ] Update pubspec.yaml with new dependencies
  - [ ] Add flutter_riverpod: ^2.4.9
  - [ ] Add flutter_secure_storage: ^9.0.0
  - [ ] Add jwt_decode: ^0.3.1
  - [ ] Add dio: ^5.3.2
  - [ ] Remove provider dependency
- [ ] Run flutter pub get
- [ ] Update .env file with API_BASE_URL
- [ ] Verify JWT_SECRET consistency between frontend and backend

## Phase 2: Authentication Infrastructure

### 2.1 Core Models (lib/models/auth/)
- [ ] Create user_model.dart matching Prisma schema
  - [ ] User class with all fields from Prisma
  - [ ] UserRole enum
  - [ ] fromJson and toJson methods
- [ ] Create login_request.dart
- [ ] Create login_response.dart
- [ ] Create register_request.dart

### 2.2 JWT Token Management (lib/services/auth/)
- [ ] Create jwt_token_manager.dart
  - [ ] Implement secure storage operations
  - [ ] Add token validation methods
  - [ ] Add auto refresh logic
- [ ] Create auth_interceptor.dart
  - [ ] Implement Dio interceptor
  - [ ] Handle 401 errors and token refresh
  - [ ] Skip auth for login/register endpoints

### 2.3 Enhanced Authentication Service
- [ ] Update auth_service.dart
  - [ ] Implement JWT-based login
  - [ ] Implement register functionality
  - [ ] Add logout with token clearing
  - [ ] Add getCurrentUser method
  - [ ] Add token refresh functionality

## Phase 3: State Management with Riverpod

### 3.1 Authentication Providers (lib/providers/auth/)
- [ ] Create auth_state_provider.dart
  - [ ] Define AuthState class
  - [ ] Implement AuthNotifier
  - [ ] Add login, register, logout methods
  - [ ] Add authentication status checking
- [ ] Create user_provider.dart
  - [ ] currentUserProvider
  - [ ] isAuthenticatedProvider

### 3.2 Repository Pattern
- [ ] Create auth_repository.dart
  - [ ] Define AuthRepository interface
  - [ ] Implement AuthRepositoryImpl
  - [ ] Integrate with AuthService and JwtTokenManager

## Phase 4: HTTP Client Integration

### 4.1 Enhanced API Service
- [ ] Create dio_client.dart
  - [ ] Replace existing ApiService with Dio
  - [ ] Setup interceptors (Auth + Logging)
  - [ ] Implement HTTP methods with automatic JWT attachment
- [ ] Update existing services to use DioClient

### 4.2 Supabase Integration
- [ ] Create supabase_service.dart
  - [ ] Implement custom Supabase client with JWT headers
  - [ ] Add generic CRUD operations
  - [ ] Integrate with JWT token manager

## Phase 5: UI Components & Screens

### 5.1 Authentication Screens
- [ ] Create login_screen.dart
  - [ ] Email/password form with validation
  - [ ] Loading states and error handling
  - [ ] Navigation to register/forgot password
- [ ] Create register_screen.dart
  - [ ] Registration form with user role selection
  - [ ] Form validation
  - [ ] Terms and conditions
- [ ] Create forgot_password_screen.dart

### 5.2 Auth Wrapper & Guards
- [ ] Create auth_wrapper.dart
  - [ ] Implement authentication guard logic
  - [ ] Handle loading and unauthenticated states
- [ ] Update main.dart to use Riverpod
- [ ] Update existing screens to use auth wrapper

## Phase 6: Backend Server Integration

### 6.1 Server Configuration
- [ ] Locate Next.js backend project
- [ ] Start development server (npm run dev)
- [ ] Verify API endpoints are accessible
- [ ] Test server connectivity

### 6.2 API Endpoint Testing
- [ ] Test POST /api/auth/login
- [ ] Test POST /api/auth/register
- [ ] Test POST /api/auth/refresh
- [ ] Test POST /api/auth/forgot-password
- [ ] Test GET /api/auth/profile

## Phase 7: Testing & Validation

### 7.1 Authentication Flow Tests
- [ ] Create auth_service_test.dart
  - [ ] Test login with valid credentials
  - [ ] Test login with invalid credentials
  - [ ] Test user registration
  - [ ] Test token refresh
  - [ ] Test logout functionality

### 7.2 Integration Tests
- [ ] Test login flow end-to-end
- [ ] Test token persistence across app restarts
- [ ] Test automatic token refresh
- [ ] Test protected route access
- [ ] Test Supabase CRUD with authenticated context

## Phase 8: Security & Error Handling

### 8.1 Security Measures
- [ ] Implement secure token storage using FlutterSecureStorage
- [ ] Add automatic token refresh before expiry
- [ ] Handle logout on security events
- [ ] Add input validation and sanitization

### 8.2 Error Handling Strategy
- [ ] Create auth_exceptions.dart
  - [ ] Define AuthException class
  - [ ] Define AuthErrorType enum
  - [ ] Implement error handler utility
- [ ] Add comprehensive error handling throughout the app
- [ ] Add user-friendly error messages

## Final Verification

### Success Criteria Checklist
- [ ] Users can register and login with email/password
- [ ] JWT tokens are securely stored and managed
- [ ] Automatic token refresh works seamlessly
- [ ] Supabase operations work with authenticated context
- [ ] App maintains authentication state across restarts
- [ ] Comprehensive error handling for all auth scenarios
- [ ] Clean, maintainable code architecture

### Quality Assurance
- [ ] Code review and refactoring
- [ ] Performance testing
- [ ] Security audit
- [ ] Documentation update
- [ ] Final testing on multiple devices

## Risk Mitigation Tasks

### Technical Risks
- [ ] Implement FlutterSecureStorage with proper fallbacks
- [ ] Add retry logic and offline support
- [ ] Ensure proper Riverpod state synchronization

### Implementation Risks
- [ ] Break down complex components into smaller parts
- [ ] Prioritize core functionality first
- [ ] Maintain package version compatibility
- [ ] Regular testing throughout implementation