# Familiarise Mobile - Flutter System Design Document

## Project Overview

Familiarise Mobile is a Flutter application that provides a mobile interface for the Familiarise platform - a consultation/mentorship marketplace. This app shares the same PostgreSQL database (via Supabase) as the existing Next.js web application.

**Target Users**: Consultees (users seeking expert consultations)
**Platforms**: iOS 14+ and Android API 24+
**Flutter Version**: 3.24.x (Dart 3.5.x)

---

## Architecture Overview

### Clean Architecture with Feature-First Structure

```
lib/
├── main.dart                 # App entry point
├── app/                      # App-level configuration
│   ├── app.dart              # MaterialApp widget
│   ├── router.dart           # GoRouter configuration
│   └── theme/                # Theme data, colors, typography
│
├── core/                     # Shared infrastructure
│   ├── config/               # Environment, API config
│   ├── constants/            # App constants, enums
│   ├── errors/               # Failure types, exceptions
│   ├── network/              # HTTP client, interceptors
│   ├── utils/                # Utilities (date, currency, etc.)
│   └── extensions/           # Dart extensions
│
├── data/                     # Data layer
│   ├── datasources/          # Remote and local data sources
│   ├── models/               # Data transfer objects (DTOs)
│   └── repositories/         # Repository implementations
│
├── domain/                   # Business logic layer
│   ├── entities/             # Business entities
│   ├── repositories/         # Repository interfaces
│   └── usecases/             # Use case classes
│
├── features/                 # Feature modules
│   ├── auth/                 # Authentication
│   ├── onboarding/           # User onboarding flow
│   ├── explore/              # Browse experts
│   ├── booking/              # Book appointments
│   ├── checkout/             # Payment flow
│   ├── dashboard/            # User dashboard
│   ├── meetings/             # Video meetings (Stream)
│   ├── chat/                 # Chat (Stream)
│   └── profile/              # User profile
│
└── shared/                   # Shared widgets and providers
    ├── widgets/              # Reusable UI components
    └── providers/            # Global providers
```

---

## State Management: Riverpod 2.x

Use Riverpod with code generation for type-safe, testable state management.

### Provider Types

```dart
// Simple provider
@riverpod
String greeting(GreetingRef ref) => 'Hello';

// Async provider (API calls)
@riverpod
Future<List<Consultant>> consultants(ConsultantsRef ref) async {
  final repo = ref.watch(consultantRepositoryProvider);
  return repo.getConsultants();
}

// Notifier provider (stateful)
@riverpod
class Auth extends _$Auth {
  @override
  AuthState build() => const AuthState.initial();

  Future<void> signIn(String email, String password) async {
    state = const AuthState.loading();
    // ... implementation
  }
}
```

### Dependency Injection Pattern

```dart
// lib/app/di/injection.dart
@riverpod
Dio dio(DioRef ref) {
  return Dio(BaseOptions(
    baseUrl: EnvConfig.apiBaseUrl,
    connectTimeout: const Duration(seconds: 30),
  ))..interceptors.add(AuthInterceptor(ref));
}

@riverpod
AuthRepository authRepository(AuthRepositoryRef ref) {
  return AuthRepositoryImpl(
    remoteSource: ref.watch(authRemoteSourceProvider),
    localStorage: ref.watch(secureStorageProvider),
  );
}
```

---

## Database Connectivity

### Primary: Flutter Prisma Connector

If available, use the user's custom Flutter Prisma connector for direct database access.

```dart
// lib/data/datasources/remote/prisma_client.dart
class PrismaClient {
  late final PrismaORM _prisma;

  Future<void> initialize() async {
    _prisma = PrismaORM(
      databaseUrl: EnvConfig.databaseUrl,
      directUrl: EnvConfig.directUrl,
    );
    await _prisma.connect();
  }

  Future<User?> findUserById(String id) async {
    return await _prisma.user.findUnique(
      where: UserWhereUniqueInput(id: id),
      include: UserInclude(consulteeProfile: true),
    );
  }
}
```

### Fallback: Supabase Flutter SDK

If Prisma connector is unavailable, use Supabase with RLS policies.

```dart
// lib/data/datasources/remote/supabase_client.dart
class SupabaseDataSource {
  final SupabaseClient _client;

  SupabaseDataSource(this._client);

  Future<List<Map<String, dynamic>>> getConsultants({
    String? domainId,
    int page = 0,
    int pageSize = 20,
  }) async {
    var query = _client
        .from('consultant_profiles')
        .select('''
          *,
          users!inner(*),
          domains(*),
          consultation_plans(*),
          subscription_plans(*)
        ''')
        .eq('is_verified', true);

    if (domainId != null) {
      query = query.eq('domain_id', domainId);
    }

    return await query
        .order('rating', ascending: false)
        .range(page * pageSize, (page + 1) * pageSize - 1);
  }
}
```

### Required RLS Policies (Supabase Fallback)

```sql
-- Enable RLS on all tables
ALTER TABLE users ENABLE ROW LEVEL SECURITY;
ALTER TABLE consultant_profiles ENABLE ROW LEVEL SECURITY;
ALTER TABLE consultee_profiles ENABLE ROW LEVEL SECURITY;
ALTER TABLE appointments ENABLE ROW LEVEL SECURITY;
ALTER TABLE payments ENABLE ROW LEVEL SECURITY;

-- Users: Own data only
CREATE POLICY "users_select_own" ON users
  FOR SELECT USING (auth.uid()::text = id);

CREATE POLICY "users_update_own" ON users
  FOR UPDATE USING (auth.uid()::text = id);

-- Consultant profiles: Public read for verified consultants
CREATE POLICY "consultant_profiles_public_read" ON consultant_profiles
  FOR SELECT USING (is_verified = true);

-- Consultee profiles: Own data only
CREATE POLICY "consultee_profiles_own" ON consultee_profiles
  FOR ALL USING (
    EXISTS (
      SELECT 1 FROM users WHERE users.id = consultee_profiles.user_id
      AND users.id = auth.uid()::text
    )
  );

-- Appointments: Participants only
CREATE POLICY "appointments_participant" ON appointments
  FOR SELECT USING (
    EXISTS (
      SELECT 1 FROM slot_of_appointments soa
      JOIN _slot_of_appointment_to_user sotau ON soa.id = sotau."A"
      WHERE soa.appointment_id = appointments.id
      AND sotau."B" = auth.uid()::text
    )
  );

-- Payments: Own payments only
CREATE POLICY "payments_own" ON payments
  FOR ALL USING (user_id = auth.uid()::text);
```

---

## Authentication

### Primary: better_auth_flutter

```dart
// lib/features/auth/providers/auth_provider.dart
import 'package:better_auth_flutter/better_auth_flutter.dart';

@riverpod
class Auth extends _$Auth {
  late final BetterAuth _auth;

  @override
  Future<AuthState> build() async {
    _auth = BetterAuth(
      baseUrl: EnvConfig.apiBaseUrl,
      session: SessionConfig(maxAge: Duration(days: 30)),
    );

    final session = await _auth.getSession();
    if (session != null) {
      return AuthState.authenticated(session.user);
    }
    return const AuthState.unauthenticated();
  }

  Future<void> signInWithEmail(String email, String password) async {
    state = const AsyncLoading();
    try {
      final result = await _auth.signIn.email(
        email: email,
        password: password,
      );
      state = AsyncData(AuthState.authenticated(result.user));
    } catch (e) {
      state = AsyncError(e, StackTrace.current);
    }
  }

  Future<void> signInWithGoogle() async {
    state = const AsyncLoading();
    try {
      final result = await _auth.signIn.social(
        provider: 'google',
        callbackUrl: 'familiarise://auth/callback',
      );
      state = AsyncData(AuthState.authenticated(result.user));
    } catch (e) {
      state = AsyncError(e, StackTrace.current);
    }
  }

  Future<void> signOut() async {
    await _auth.signOut();
    state = const AsyncData(AuthState.unauthenticated());
  }
}
```

### Fallback: Supabase Auth + Database Trigger

If better_auth_flutter doesn't work, use Supabase Auth with a trigger to sync users:

```sql
-- Database trigger to sync auth.users to public.users
CREATE OR REPLACE FUNCTION public.handle_new_user()
RETURNS TRIGGER AS $$
BEGIN
  INSERT INTO public.users (id, email, name, image, role, created_at, updated_at)
  VALUES (
    NEW.id::text,
    NEW.email,
    COALESCE(NEW.raw_user_meta_data->>'name', NEW.raw_user_meta_data->>'full_name'),
    NEW.raw_user_meta_data->>'avatar_url',
    'CONSULTEE',
    NOW(),
    NOW()
  );
  RETURN NEW;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

CREATE TRIGGER on_auth_user_created
  AFTER INSERT ON auth.users
  FOR EACH ROW EXECUTE FUNCTION public.handle_new_user();
```

```dart
// lib/features/auth/providers/supabase_auth_provider.dart
@riverpod
class SupabaseAuth extends _$SupabaseAuth {
  @override
  Future<AuthState> build() async {
    final client = Supabase.instance.client;
    final session = client.auth.currentSession;

    client.auth.onAuthStateChange.listen((data) {
      if (data.event == AuthChangeEvent.signedIn) {
        state = AsyncData(AuthState.authenticated(data.session!.user));
      } else if (data.event == AuthChangeEvent.signedOut) {
        state = const AsyncData(AuthState.unauthenticated());
      }
    });

    if (session != null) {
      return AuthState.authenticated(session.user);
    }
    return const AuthState.unauthenticated();
  }

  Future<void> signInWithGoogle() async {
    await Supabase.instance.client.auth.signInWithOAuth(
      OAuthProvider.google,
      redirectTo: 'io.supabase.familiarise://login-callback/',
    );
  }
}
```

---

## Navigation: GoRouter

```dart
// lib/app/router.dart
@riverpod
GoRouter router(RouterRef ref) {
  final authState = ref.watch(authProvider);

  return GoRouter(
    initialLocation: '/',
    debugLogDiagnostics: true,
    redirect: (context, state) {
      final isAuthenticated = authState.valueOrNull?.isAuthenticated ?? false;
      final isOnboarded = authState.valueOrNull?.user?.onboardingCompleted ?? false;
      final isAuthRoute = state.matchedLocation.startsWith('/auth');
      final isOnboardingRoute = state.matchedLocation == '/onboarding';

      // Not authenticated -> redirect to sign in
      if (!isAuthenticated && !isAuthRoute) {
        return '/auth/sign-in';
      }

      // Authenticated but not onboarded -> redirect to onboarding
      if (isAuthenticated && !isOnboarded && !isOnboardingRoute) {
        return '/onboarding';
      }

      // Authenticated and on auth route -> redirect to dashboard
      if (isAuthenticated && isAuthRoute) {
        return '/dashboard';
      }

      return null;
    },
    routes: [
      // Auth routes
      GoRoute(
        path: '/auth/sign-in',
        name: 'signIn',
        builder: (context, state) => const SignInScreen(),
      ),
      GoRoute(
        path: '/auth/sign-up',
        name: 'signUp',
        builder: (context, state) => const SignUpScreen(),
      ),

      // Onboarding
      GoRoute(
        path: '/onboarding',
        name: 'onboarding',
        builder: (context, state) => const OnboardingScreen(),
      ),

      // Main app with bottom navigation
      ShellRoute(
        builder: (context, state, child) => MainShell(child: child),
        routes: [
          GoRoute(
            path: '/dashboard',
            name: 'dashboard',
            builder: (context, state) => const DashboardScreen(),
          ),
          GoRoute(
            path: '/explore',
            name: 'explore',
            builder: (context, state) => const ExploreScreen(),
            routes: [
              GoRoute(
                path: 'consultant/:consultantId',
                name: 'consultantProfile',
                builder: (context, state) => ConsultantProfileScreen(
                  consultantId: state.pathParameters['consultantId']!,
                ),
              ),
            ],
          ),
          GoRoute(
            path: '/chat',
            name: 'chatList',
            builder: (context, state) => const ChatListScreen(),
            routes: [
              GoRoute(
                path: ':channelId',
                name: 'chat',
                builder: (context, state) => ChatScreen(
                  channelId: state.pathParameters['channelId']!,
                ),
              ),
            ],
          ),
          GoRoute(
            path: '/profile',
            name: 'profile',
            builder: (context, state) => const ProfileScreen(),
          ),
        ],
      ),

      // Full-screen routes (outside shell)
      GoRoute(
        path: '/checkout/:planType/:planId',
        name: 'checkout',
        builder: (context, state) => CheckoutScreen(
          planType: state.pathParameters['planType']!,
          planId: state.pathParameters['planId']!,
        ),
      ),
      GoRoute(
        path: '/meeting/:callId',
        name: 'meeting',
        builder: (context, state) => MeetingScreen(
          callId: state.pathParameters['callId']!,
        ),
      ),
    ],
  );
}
```

---

## Stream SDK Integration

### Video Calls (Join Only)

```dart
// lib/features/meetings/providers/meeting_provider.dart
import 'package:stream_video_flutter/stream_video_flutter.dart';

@riverpod
class StreamVideoService extends _$StreamVideoService {
  StreamVideo? _streamVideo;
  Call? _activeCall;

  @override
  FutureOr<void> build() async {
    ref.onDispose(() {
      _activeCall?.leave();
      _streamVideo?.dispose();
    });
  }

  Future<void> initialize(String userId) async {
    final token = await _fetchStreamToken(userId);

    _streamVideo = StreamVideo(
      EnvConfig.streamApiKey,
      user: User.regular(userId: userId),
      userToken: token,
    );

    await _streamVideo!.connect();
  }

  Future<String> _fetchStreamToken(String userId) async {
    final response = await ref.read(dioProvider).post(
      '/api/stream/token',
      data: {'userId': userId},
    );
    return response.data['token'];
  }

  Future<Call> joinCall(String callId) async {
    if (_streamVideo == null) {
      throw Exception('Stream Video not initialized');
    }

    _activeCall = _streamVideo!.makeCall(
      callType: StreamCallType(),
      id: callId,
    );

    await _activeCall!.getOrCreate();
    await _activeCall!.join();

    return _activeCall!;
  }

  Future<void> leaveCall() async {
    await _activeCall?.leave();
    _activeCall = null;
  }
}
```

### Chat

```dart
// lib/features/chat/providers/chat_provider.dart
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

@riverpod
class StreamChatService extends _$StreamChatService {
  StreamChatClient? _chatClient;

  @override
  FutureOr<void> build() async {
    ref.onDispose(() => _chatClient?.dispose());
  }

  Future<void> initialize(String userId, String userName, String? imageUrl) async {
    _chatClient = StreamChatClient(
      EnvConfig.streamApiKey,
      logLevel: Level.INFO,
    );

    final token = await _fetchChatToken(userId);

    await _chatClient!.connectUser(
      User(id: userId, name: userName, image: imageUrl),
      token,
    );
  }

  Stream<List<Channel>> watchChannels() {
    return _chatClient!.queryChannels(
      filter: Filter.in_('members', [_chatClient!.state.currentUser!.id]),
      sort: [SortOption('last_message_at', direction: SortOption.DESC)],
    );
  }
}
```

---

## Payment Integration

### Razorpay (Primary for India)

```dart
// lib/features/checkout/providers/razorpay_provider.dart
import 'package:razorpay_flutter/razorpay_flutter.dart';

@riverpod
class RazorpayService extends _$RazorpayService {
  Razorpay? _razorpay;
  Completer<PaymentResult>? _paymentCompleter;

  @override
  FutureOr<void> build() {
    _razorpay = Razorpay();
    _razorpay!.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handleSuccess);
    _razorpay!.on(Razorpay.EVENT_PAYMENT_ERROR, _handleError);

    ref.onDispose(() => _razorpay?.clear());
  }

  Future<PaymentResult> openCheckout({
    required String orderId,
    required int amount,
    required String currency,
    required String userEmail,
  }) async {
    _paymentCompleter = Completer<PaymentResult>();

    final options = {
      'key': EnvConfig.razorpayKeyId,
      'amount': amount,
      'currency': currency,
      'order_id': orderId,
      'name': 'Familiarise',
      'description': 'Consultation Booking',
      'prefill': {'email': userEmail},
    };

    _razorpay!.open(options);
    return _paymentCompleter!.future;
  }

  void _handleSuccess(PaymentSuccessResponse response) {
    _paymentCompleter?.complete(PaymentResult.success(
      paymentId: response.paymentId!,
      orderId: response.orderId!,
      signature: response.signature!,
    ));
  }

  void _handleError(PaymentFailureResponse response) {
    _paymentCompleter?.complete(PaymentResult.failure(
      code: response.code ?? 0,
      message: response.message ?? 'Payment failed',
    ));
  }
}
```

### Stripe (International)

```dart
// lib/features/checkout/providers/stripe_provider.dart
import 'package:flutter_stripe/flutter_stripe.dart';

@riverpod
class StripeService extends _$StripeService {
  @override
  FutureOr<void> build() {
    Stripe.publishableKey = EnvConfig.stripePublishableKey;
  }

  Future<PaymentResult> processPayment(String clientSecret) async {
    try {
      await Stripe.instance.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
          paymentIntentClientSecret: clientSecret,
          merchantDisplayName: 'Familiarise',
          style: ThemeMode.system,
        ),
      );

      await Stripe.instance.presentPaymentSheet();
      return const PaymentResult.success();
    } on StripeException catch (e) {
      return PaymentResult.failure(
        code: e.error.code.index,
        message: e.error.localizedMessage ?? 'Payment failed',
      );
    }
  }
}
```

---

## Error Handling

### Failure Types

```dart
// lib/core/errors/failures.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure.server({
    required String message,
    int? statusCode,
  }) = ServerFailure;

  const factory Failure.network({
    String? message,
  }) = NetworkFailure;

  const factory Failure.auth({
    required String message,
  }) = AuthFailure;

  const factory Failure.validation({
    required Map<String, List<String>> errors,
  }) = ValidationFailure;

  const factory Failure.notFound({
    required String resource,
  }) = NotFoundFailure;

  const factory Failure.unknown({
    String? message,
  }) = UnknownFailure;
}

// Result type using Either pattern
typedef Result<T> = Either<Failure, T>;
```

### Repository Pattern

```dart
// lib/domain/repositories/consultant_repository.dart
abstract class ConsultantRepository {
  Future<Result<List<Consultant>>> getConsultants({
    String? domainId,
    int page = 0,
  });

  Future<Result<ConsultantDetails>> getConsultantById(String id);

  Future<Result<List<TimeSlot>>> getAvailableSlots({
    required String consultantId,
    required DateTime startDate,
    required DateTime endDate,
  });
}

// lib/data/repositories/consultant_repository_impl.dart
class ConsultantRepositoryImpl implements ConsultantRepository {
  final ConsultantRemoteSource _remoteSource;
  final NetworkInfo _networkInfo;

  ConsultantRepositoryImpl(this._remoteSource, this._networkInfo);

  @override
  Future<Result<List<Consultant>>> getConsultants({
    String? domainId,
    int page = 0,
  }) async {
    if (!await _networkInfo.isConnected) {
      return const Left(Failure.network());
    }

    try {
      final models = await _remoteSource.getConsultants(
        domainId: domainId,
        page: page,
      );
      return Right(models.map((m) => m.toEntity()).toList());
    } on ServerException catch (e) {
      return Left(Failure.server(message: e.message));
    } catch (e) {
      return Left(Failure.unknown(message: e.toString()));
    }
  }
}
```

---

## Environment Configuration

```dart
// lib/core/config/env_config.dart
import 'package:envied/envied.dart';

part 'env_config.g.dart';

@Envied(path: '.env')
abstract class EnvConfig {
  @EnviedField(varName: 'DATABASE_URL', obfuscate: true)
  static String databaseUrl = _EnvConfig.databaseUrl;

  @EnviedField(varName: 'SUPABASE_URL')
  static String supabaseUrl = _EnvConfig.supabaseUrl;

  @EnviedField(varName: 'SUPABASE_ANON_KEY', obfuscate: true)
  static String supabaseAnonKey = _EnvConfig.supabaseAnonKey;

  @EnviedField(varName: 'STREAM_API_KEY')
  static String streamApiKey = _EnvConfig.streamApiKey;

  @EnviedField(varName: 'RAZORPAY_KEY_ID')
  static String razorpayKeyId = _EnvConfig.razorpayKeyId;

  @EnviedField(varName: 'STRIPE_PUBLISHABLE_KEY')
  static String stripePublishableKey = _EnvConfig.stripePublishableKey;

  @EnviedField(varName: 'API_BASE_URL')
  static String apiBaseUrl = _EnvConfig.apiBaseUrl;
}
```

---

## Database Schema Reference (from Web App)

### Core Enums

```dart
// lib/core/constants/enums.dart
enum UserRole { CONSULTANT, CONSULTEE, ADMIN, STAFF }

enum Gender { MALE, FEMALE, NON_BINARY, PREFER_NOT_TO_SAY }

enum CareerStage { STUDENT, EARLY_CAREER, MID_CAREER, SENIOR, EXECUTIVE }

enum AppointmentType { CONSULTATION, SUBSCRIPTION, WEBINAR, CLASS }

enum RequestStatus {
  PENDING,
  APPROVED,
  APPROVED_PENDING_PAYMENT,
  SCHEDULED,
  REJECTED,
  CANCELLED,
  EXPIRED,
}

enum PaymentStatus { PENDING, SUCCEEDED, FAILED }

enum PaymentGateway { STRIPE, RAZORPAY, LEMON_SQUEEZY, XFLOW, CARD }
```

### Key Entities

```dart
// lib/domain/entities/user.dart
@freezed
class User with _$User {
  const factory User({
    required String id,
    String? name,
    String? email,
    String? image,
    String? phone,
    String? timezone,
    UserRole? role,
    bool? onboardingCompleted,
    String? consulteeProfileId,
  }) = _User;
}

// lib/domain/entities/consultant.dart
@freezed
class Consultant with _$Consultant {
  const factory Consultant({
    required String id,
    required String userId,
    required User user,
    double? experience,
    double? rating,
    String? headline,
    String? bio,
    Domain? domain,
    List<SubDomain>? subDomains,
    List<String>? languages,
    List<String>? toolsAndTechnologies,
    bool? isVerified,
    List<ConsultationPlan>? consultationPlans,
    List<SubscriptionPlan>? subscriptionPlans,
  }) = _Consultant;
}

// lib/domain/entities/appointment.dart
@freezed
class Appointment with _$Appointment {
  const factory Appointment({
    required String id,
    required AppointmentType appointmentType,
    String? consultationId,
    String? subscriptionId,
    String? webinarId,
    String? classId,
    List<SlotOfAppointment>? slots,
    DateTime? createdAt,
  }) = _Appointment;
}

// lib/domain/entities/slot.dart
@freezed
class SlotOfAppointment with _$SlotOfAppointment {
  const factory SlotOfAppointment({
    required String id,
    required DateTime startsAt,
    required DateTime endsAt,
    bool? isTentative,
    String? appointmentId,
    MeetingSession? meetingSession,
  }) = _SlotOfAppointment;
}
```

---

## API Endpoints (Backend Reference)

The mobile app communicates with the Next.js backend via these endpoints:

| Endpoint | Method | Description |
|----------|--------|-------------|
| `/api/stream/token` | POST | Get Stream video/chat token |
| `/api/checkout` | POST | Create payment intent |
| `/api/checkout/verify` | POST | Verify payment completion |
| `/api/slots/availability` | GET | Get consultant availability |
| `/api/appointments` | GET | Get user appointments |
| `/api/appointments/:id` | GET | Get appointment details |
| `/api/appointments/:id/cancel` | POST | Cancel appointment |

---

## Testing Strategy

### Unit Tests
- Use cases
- Repositories (with mocked data sources)
- Providers/state management

### Widget Tests
- Individual screen widgets
- Shared components

### Integration Tests
- Critical user flows (auth, booking, payment)

```dart
// test/features/auth/auth_provider_test.dart
void main() {
  group('AuthProvider', () {
    late MockAuthRepository mockRepo;
    late ProviderContainer container;

    setUp(() {
      mockRepo = MockAuthRepository();
      container = ProviderContainer(
        overrides: [
          authRepositoryProvider.overrideWithValue(mockRepo),
        ],
      );
    });

    test('signIn success updates state to authenticated', () async {
      when(() => mockRepo.signIn(any(), any()))
          .thenAnswer((_) async => Right(testUser));

      final notifier = container.read(authProvider.notifier);
      await notifier.signInWithEmail('test@example.com', 'password');

      expect(
        container.read(authProvider).valueOrNull,
        isA<AuthState>().having((s) => s.isAuthenticated, 'isAuthenticated', true),
      );
    });
  });
}
```

---

## Performance Considerations

1. **Image Caching**: Use `cached_network_image` for all remote images
2. **Pagination**: Implement infinite scroll with cursor-based pagination
3. **State Preservation**: Use `ref.keepAlive()` for expensive computations
4. **Lazy Loading**: Load feature modules on-demand
5. **Memory Management**: Dispose Stream clients on logout

---

## Security Considerations

1. **Secure Storage**: Use `flutter_secure_storage` for tokens
2. **Certificate Pinning**: Implement for production builds
3. **Obfuscation**: Use `envied` with obfuscation for API keys
4. **Deep Link Validation**: Validate all deep link parameters
5. **Session Management**: Auto-refresh tokens before expiry

---

## Build & Release

### Android
- Keystore in `android/app/keystore.jks`
- Key properties in `android/key.properties` (gitignored)
- Release build: `flutter build appbundle --release`

### iOS
- Certificates managed via Xcode or Fastlane
- Release build: `flutter build ios --release`

### CI/CD
- GitHub Actions workflow in `.github/workflows/flutter-ci.yml`
- Secrets stored in GitHub repository settings
