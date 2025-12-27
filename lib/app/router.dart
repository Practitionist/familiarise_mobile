import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

import '../domain/entities/booking/booking_entities.dart';
import '../features/auth/providers/auth_provider.dart';
import '../features/auth/screens/forgot_password_screen.dart';
import '../features/auth/screens/sign_in_screen.dart';
import '../features/auth/screens/sign_up_screen.dart';
import '../features/booking/screens/booking_screens.dart';
import '../features/chat/screens/messages_screen.dart';
import '../features/explore/screens/consultant_profile_screen.dart';
import '../features/explore/screens/explore_screen.dart';
import '../features/dashboard/screens/dashboard_screen.dart';
import '../features/onboarding/screens/onboarding_shell_screen.dart';
import '../features/profile/screens/profile_screen.dart';
import 'providers/navigation_provider.dart';
import 'shells/main_shell.dart';

part 'router.g.dart';

/// Listenable adapter for auth state changes to trigger router refresh
class AuthStateNotifier extends ChangeNotifier {
  AuthStateNotifier(this.ref) {
    ref.listen(authProvider, (_, __) {
      notifyListeners();
    });
  }

  final Ref ref;
}

@Riverpod(keepAlive: true)
GoRouter router(Ref ref) {
  final authNotifier = AuthStateNotifier(ref);

  return GoRouter(
    initialLocation: '/',
    debugLogDiagnostics: true,
    refreshListenable: authNotifier,
    observers: [SentryNavigatorObserver()],
    redirect: (context, state) {
      // Read fresh auth state on each redirect (not captured from closure)
      final authState = ref.read(authProvider);
      final isAuthenticated = authState.isAuthenticated;
      final isLoading = authState.isLoading;
      final needsOnboarding = authState.needsOnboarding;
      final isInitial = authState.maybeMap(
        initial: (_) => true,
        orElse: () => false,
      );
      final location = state.matchedLocation;

      // Debug logging
      debugPrint('🔀 Router redirect - location: $location, isAuth: $isAuthenticated, isLoading: $isLoading, needsOnboarding: $needsOnboarding, isInitial: $isInitial');
      final isAuthRoute = location.startsWith('/auth');
      final isOnboardingRoute = location == '/onboarding';
      final isSplash = location == '/';

      // Valid app routes that authenticated users can access
      final isValidAppRoute = location.startsWith('/dashboard') ||
          location.startsWith('/explore') ||
          location.startsWith('/booking') ||
          location.startsWith('/my-bookings') ||
          location.startsWith('/messages') ||
          location.startsWith('/chat') ||
          location.startsWith('/profile') ||
          location == '/booking/failure' ||
          location == '/booking/success';

      // Still initializing auth state, stay where we are
      if (isInitial || isLoading) {
        return null;
      }

      // Not authenticated -> redirect to sign in (unless already on auth route)
      if (!isAuthenticated) {
        if (isAuthRoute) return null; // Already on auth route, stay there
        return '/auth/sign-in'; // Redirect to sign-in from splash or any other route
      }

      // Authenticated but needs onboarding -> redirect to onboarding
      if (needsOnboarding && !isOnboardingRoute) {
        return '/onboarding';
      }

      // Authenticated, completed onboarding, on a valid app route -> stay there
      if (!needsOnboarding && isValidAppRoute) {
        return null;
      }

      // On splash -> redirect to dashboard
      if (isSplash) {
        return '/dashboard';
      }

      // On auth route -> redirect to dashboard
      if (isAuthRoute) {
        return '/dashboard';
      }

      // On onboarding route but completed -> redirect to dashboard
      if (isOnboardingRoute && !needsOnboarding) {
        return '/dashboard';
      }

      return null;
    },
    routes: [
      // Splash / Initial route
      GoRoute(
        path: '/',
        name: 'splash',
        builder: (context, state) => const Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlutterLogo(size: 100),
                SizedBox(height: 24),
                Text(
                  'Familiarise',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text('Find Your Mentor'),
                SizedBox(height: 32),
                CircularProgressIndicator(),
              ],
            ),
          ),
        ),
      ),

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
      GoRoute(
        path: '/auth/forgot-password',
        name: 'forgotPassword',
        builder: (context, state) => const ForgotPasswordScreen(),
      ),
      // OAuth callback route
      GoRoute(
        path: '/auth/callback',
        name: 'authCallback',
        builder: (context, state) => const Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),

      // Onboarding
      GoRoute(
        path: '/onboarding',
        name: 'onboarding',
        builder: (context, state) => const OnboardingShellScreen(),
      ),

      // Main app shell with bottom navigation
      ShellRoute(
        builder: (context, state, child) {
          // Sync navigation index based on current route
          WidgetsBinding.instance.addPostFrameCallback((_) {
            final container = ProviderScope.containerOf(context);
            final currentPath = state.matchedLocation;
            final currentTab = NavigationTab.fromPath(currentPath);
            final currentIndex = container.read(navigationIndexProvider);
            if (currentIndex != currentTab.index) {
              container.read(navigationIndexProvider.notifier).setIndex(currentTab.index);
            }
          });
          return MainShell(child: child);
        },
        routes: [
          // Explore tab
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
          // Dashboard tab
          GoRoute(
            path: '/dashboard',
            name: 'dashboard',
            builder: (context, state) => const DashboardScreen(),
          ),
          // Messages tab (placeholder)
          GoRoute(
            path: '/messages',
            name: 'messages',
            builder: (context, state) => const MessagesPlaceholderScreen(),
          ),
          // Profile tab
          GoRoute(
            path: '/profile',
            name: 'profile',
            builder: (context, state) => const ProfileScreen(),
          ),
          // My Bookings (inside shell for bottom nav)
          GoRoute(
            path: '/my-bookings',
            name: 'myBookings',
            builder: (context, state) => const MyBookingsScreen(),
          ),
        ],
      ),

      // Booking routes (Phase 5)
      GoRoute(
        path: '/booking/:consultantId/:planId',
        name: 'booking',
        builder: (context, state) => BookingScreen(
          consultantId: state.pathParameters['consultantId']!,
          planId: state.pathParameters['planId']!,
          planType: state.uri.queryParameters['type'] ?? 'consultation',
        ),
      ),
      GoRoute(
        path: '/booking/success',
        name: 'bookingSuccess',
        builder: (context, state) {
          final booking = state.extra as Booking?;
          return BookingSuccessScreen(booking: booking);
        },
      ),
      GoRoute(
        path: '/booking/failure',
        name: 'bookingFailure',
        builder: (context, state) {
          final extra = state.extra as Map<String, dynamic>?;
          return BookingFailureScreen(
            errorMessage: extra?['errorMessage'] as String?,
            consultantId: extra?['consultantId'] as String?,
            planId: extra?['planId'] as String?,
            planType: extra?['planType'] as String?,
          );
        },
      ),
    ],
    errorBuilder: (context, state) => Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.error_outline, size: 64, color: Colors.red),
            const SizedBox(height: 16),
            Text('Page not found: ${state.matchedLocation}'),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => context.go('/'),
              child: const Text('Go Home'),
            ),
          ],
        ),
      ),
    ),
  );
}
