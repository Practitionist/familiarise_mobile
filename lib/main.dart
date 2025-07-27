import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'config/supabase_config.dart';
import 'services/auth/web_oauth_config.dart';
import 'screens/home_screen.dart';
import 'screens/explore_experts_screen.dart';
import 'screens/auth/login_screen.dart';
import 'screens/auth/register_screen.dart';
import 'screens/auth/forgot_password_screen.dart';
import 'screens/consultant_detail_screen.dart';
import 'screens/user_profile_screen.dart';
import 'screens/video_call_screen.dart';
import 'screens/booking_screen.dart';
import 'widgets/auth/auth_wrapper.dart';
import 'widgets/auth/public_wrapper.dart';
import 'services/logging_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Initialize logging service
  LoggingService().initialize();
  
  await dotenv.load(fileName: ".env");
  await SupabaseConfig.initialize();
  
  // Initialize web OAuth configuration (security: inject meta tags dynamically)
  await WebOAuthConfig.initialize();
  
  runApp(const ProviderScope(child: FamiliariseApp()));
}

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    // PUBLIC ROUTES - No authentication required
    // Users can browse consultants and view details without logging in
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const PublicWrapper(child: HomeScreen());
      },
    ),
    GoRoute(
      path: '/explore-experts',
      builder: (BuildContext context, GoRouterState state) {
        return const PublicWrapper(child: ExploreExpertsScreen());
      },
    ),
    GoRoute(
      path: '/consultant/:id',
      builder: (BuildContext context, GoRouterState state) {
        final consultantId = state.pathParameters['id']!;
        return PublicWrapper(child: ConsultantDetailScreen(consultantId: consultantId));
      },
    ),
    // PRIVATE ROUTES - Authentication required
    // These features require user login for security and functionality
    GoRoute(
      path: '/user-profile',
      builder: (BuildContext context, GoRouterState state) {
        return const AuthWrapper(child: UserProfileScreen());
      },
    ),
    GoRoute(
      path: '/video-call/:consultantId',
      builder: (BuildContext context, GoRouterState state) {
        final consultantId = state.pathParameters['consultantId']!;
        final appointmentId = state.uri.queryParameters['appointmentId'];
        return AuthWrapper(
          child: VideoCallScreen(
            consultantId: consultantId,
            appointmentId: appointmentId,
          ),
        );
      },
    ),
    GoRoute(
      path: '/book/:consultantId',
      builder: (BuildContext context, GoRouterState state) {
        final consultantId = state.pathParameters['consultantId']!;
        return AuthWrapper(
          child: BookingScreen(consultantId: consultantId),
        );
      },
    ),
    // AUTH ROUTES - No wrapper needed, handle their own auth logic
    GoRoute(
      path: '/login',
      builder: (BuildContext context, GoRouterState state) {
        return const LoginScreen();
      },
    ),
    GoRoute(
      path: '/register',
      builder: (BuildContext context, GoRouterState state) {
        return const RegisterScreen();
      },
    ),
    GoRoute(
      path: '/forgot-password',
      builder: (BuildContext context, GoRouterState state) {
        return const ForgotPasswordScreen();
      },
    ),
  ],
);

class FamiliariseApp extends StatelessWidget {
  const FamiliariseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Familiarise',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF1E88E5),
          brightness: Brightness.light,
        ),
        fontFamily: 'SF Pro Display',
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ),
      routerConfig: _router,
    );
  }
}