import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';

@riverpod
GoRouter router(RouterRef ref) {
  // TODO: Watch auth state for redirects
  // final authState = ref.watch(authProvider);

  return GoRouter(
    initialLocation: '/',
    debugLogDiagnostics: true,
    redirect: (context, state) {
      // TODO: Implement auth redirects
      // final isAuthenticated = authState.valueOrNull?.isAuthenticated ?? false;
      // final isAuthRoute = state.matchedLocation.startsWith('/auth');
      //
      // if (!isAuthenticated && !isAuthRoute) {
      //   return '/auth/sign-in';
      // }
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

      // TODO: Add auth routes
      // GoRoute(
      //   path: '/auth/sign-in',
      //   name: 'signIn',
      //   builder: (context, state) => const SignInScreen(),
      // ),

      // TODO: Add main shell with bottom navigation
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
        child: Text('Page not found: ${state.matchedLocation}'),
      ),
    ),
  );
}
