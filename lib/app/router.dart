import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../features/auth/providers/auth_provider.dart';
import '../features/auth/screens/forgot_password_screen.dart';
import '../features/auth/screens/sign_in_screen.dart';
import '../features/auth/screens/sign_up_screen.dart';
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
  final authState = ref.watch(authProvider);
  final authNotifier = AuthStateNotifier(ref);

  return GoRouter(
    initialLocation: '/',
    debugLogDiagnostics: true,
    refreshListenable: authNotifier,
    redirect: (context, state) {
      final isAuthenticated = authState.isAuthenticated;
      final isLoading = authState.isLoading;
      final needsOnboarding = authState.needsOnboarding;
      final isInitial = authState.maybeMap(
        initial: (_) => true,
        orElse: () => false,
      );
      final isAuthRoute = state.matchedLocation.startsWith('/auth');
      final isOnboardingRoute = state.matchedLocation == '/onboarding';
      final isSplash = state.matchedLocation == '/';

      // Still initializing auth state, stay on splash
      if (isInitial || (isLoading && isSplash)) {
        return null;
      }

      // Not authenticated and not on auth route -> redirect to sign in
      if (!isAuthenticated && !isAuthRoute && !isSplash) {
        return '/auth/sign-in';
      }

      // Authenticated but needs onboarding -> redirect to onboarding
      if (isAuthenticated && needsOnboarding && !isOnboardingRoute) {
        return '/onboarding';
      }

      // On splash and not loading -> redirect based on auth status
      if (isSplash && !isLoading && !isInitial) {
        if (!isAuthenticated) {
          return '/auth/sign-in';
        }
        if (needsOnboarding) {
          return '/onboarding';
        }
        return '/dashboard';
      }

      // Authenticated, completed onboarding, and on auth route -> redirect to dashboard
      if (isAuthenticated && !needsOnboarding && isAuthRoute) {
        return '/dashboard';
      }

      // Authenticated, completed onboarding, but on onboarding route -> redirect to dashboard
      if (isAuthenticated && !needsOnboarding && isOnboardingRoute) {
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

      // TODO: Add main shell with bottom navigation in Phase 3+
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
