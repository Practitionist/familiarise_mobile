import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../providers/auth/auth_state_provider.dart';

/// PublicWrapper initializes authentication state but allows access to content
/// without requiring login. Used for public routes that don't need authentication.
/// 
/// Auth Workflow:
/// - Public routes (home, explore, consultant details): Use PublicWrapper
/// - Private routes (booking, profile, video calls): Use AuthWrapper (requires login)
/// - Booking flow: Will check auth status and prompt login if needed
class PublicWrapper extends ConsumerStatefulWidget {
  final Widget child;

  const PublicWrapper({super.key, required this.child});

  @override
  ConsumerState<PublicWrapper> createState() => _PublicWrapperState();
}

class _PublicWrapperState extends ConsumerState<PublicWrapper> {
  @override
  void initState() {
    super.initState();
    // Initialize authentication state in background
    // This allows the app to know auth status without forcing login
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(authProvider.notifier).initializeAuth();
    });
  }

  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authProvider);

    // Show minimal loading only during initial auth check
    if (!authState.isInitialized && authState.isLoading) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    // Always show content - no login requirement for public routes
    return widget.child;
  }
}