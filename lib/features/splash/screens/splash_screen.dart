import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../auth/providers/auth_provider.dart';

/// Splash screen that handles initial auth check and navigation
class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  bool _hasNavigated = false;

  @override
  Widget build(BuildContext context) {
    // Watch auth state
    final authState = ref.watch(authProvider);

    // Navigate when auth state is determined
    if (!_hasNavigated) {
      final isInitial = authState.maybeMap(
        initial: (_) => true,
        orElse: () => false,
      );

      if (!isInitial && !authState.isLoading) {
        _hasNavigated = true;
        // Use Future.microtask to navigate after build
        Future.microtask(() {
          if (!mounted) return;
          _navigate(context, authState);
        });
      }
    }

    return const Scaffold(
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
    );
  }

  void _navigate(BuildContext context, dynamic authState) {
    if (authState.isAuthenticated) {
      if (authState.needsOnboarding) {
        context.go('/onboarding');
      } else {
        context.go('/dashboard');
      }
    } else {
      context.go('/auth/sign-in');
    }
  }
}
