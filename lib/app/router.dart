import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../features/auth/providers/auth_provider.dart';
import '../features/auth/screens/forgot_password_screen.dart';
import '../features/auth/screens/sign_in_screen.dart';
import '../features/auth/screens/sign_up_screen.dart';
import '../features/explore/screens/consultant_profile_screen.dart';
import '../features/explore/screens/explore_screen.dart';
import '../features/onboarding/screens/onboarding_shell_screen.dart';

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

@riverpod
GoRouter router(Ref ref) {
  final authNotifier = AuthStateNotifier(ref);

  return GoRouter(
    initialLocation: '/',
    debugLogDiagnostics: true,
    refreshListenable: authNotifier,
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
      final isAuthRoute = location.startsWith('/auth');
      final isOnboardingRoute = location == '/onboarding';
      final isSplash = location == '/';

      // Valid app routes that authenticated users can access
      final isValidAppRoute = location.startsWith('/dashboard') ||
          location.startsWith('/explore') ||
          location.startsWith('/chat') ||
          location.startsWith('/profile');

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
      if (isOnboardingRoute) {
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

      // Dashboard (placeholder - to be implemented in later phases)
      GoRoute(
        path: '/dashboard',
        name: 'dashboard',
        builder: (context, state) => Scaffold(
          appBar: AppBar(
            title: const Text('Dashboard'),
            actions: [
              IconButton(
                icon: const Icon(Icons.logout),
                onPressed: () {
                  // Sign out through auth provider
                  final container = ProviderScope.containerOf(context);
                  container.read(authProvider.notifier).signOut();
                },
              ),
            ],
          ),
          body: const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.check_circle, size: 64, color: Colors.green),
                SizedBox(height: 16),
                Text(
                  'Welcome to Familiarise!',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text('You are successfully signed in.'),
                SizedBox(height: 24),
                Text(
                  'Dashboard coming in Phase 3',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
        ),
      ),

      // Explore routes (Phase 4)
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

      // TODO: Add main shell with bottom navigation in later phases
      // ShellRoute(
      //   builder: (context, state, child) => MainShell(child: child),
      //   routes: [
      //     GoRoute(path: '/dashboard', ...),
      //     GoRoute(path: '/explore', ...),
      //     GoRoute(path: '/chat', ...),
      //     GoRoute(path: '/profile', ...),
      //   ],
      // ),
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
