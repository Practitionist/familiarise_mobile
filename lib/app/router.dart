import 'package:flutter/foundation.dart' show kDebugMode;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

import '../domain/entities/booking/booking_entities.dart';
import '../domain/entities/checkout/checkout_entities.dart';
import '../core/constants/enums.dart';
import '../features/auth/providers/auth_provider.dart';
import '../features/auth/screens/forgot_password_screen.dart';
import '../features/auth/screens/sign_in_screen.dart';
import '../features/auth/screens/sign_up_screen.dart';
import '../features/booking/screens/booking_screens.dart';
import '../features/chat/screens/chat_list_screen.dart';
import '../features/collaborations/screens/collaborations_screen.dart';
import '../features/chat/screens/chat_room_screen.dart';
import '../features/checkout/screens/checkout_screens.dart';
import '../features/explore/screens/consultant_profile_screen.dart';
import '../features/explore/screens/explore_screen.dart';
import '../features/programs/screens/programs_screen.dart';
import '../features/programs/screens/webinar_detail_screen.dart';
import '../features/programs/screens/class_detail_screen.dart';
import '../features/dashboard/screens/dashboard_screen.dart';
import '../features/onboarding/screens/onboarding_shell_screen.dart';
import '../features/schedule/screens/schedule_screen.dart';
import '../features/profile/screens/active_sessions_screen.dart';
import '../features/profile/screens/change_password_screen.dart';
import '../features/profile/screens/edit_profile_screen.dart';
import '../features/profile/screens/profile_screen.dart';
import '../features/support/screens/support_tickets_screen.dart';
import '../features/support/screens/support_ticket_detail_screen.dart';
import '../features/support/screens/create_ticket_screen.dart';
import '../features/feedback/screens/feedback_screen.dart';
import '../features/meetings/screens/meeting_screen.dart';
import '../features/trials/screens/trial_list_screen.dart';
import '../features/trials/screens/trial_request_screen.dart';
import '../features/booking/screens/appointment_documents_screen.dart';
import '../features/maintenance/screens/maintenance_screen.dart';
import '../features/staff/screens/staff_dashboard_screen.dart';
import '../features/payout/screens/add_payout_account_screen.dart';
import '../features/payout/screens/payout_accounts_screen.dart';
import '../features/tax/screens/tax_info_screen.dart';
import '../features/verification/screens/verification_status_screen.dart';
import '../features/verification/screens/verification_submit_screen.dart';
import '../features/waitlist/screens/waitlist_screen.dart';
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
      if (kDebugMode) {
        debugPrint(
            'Router redirect - location: $location, isAuth: $isAuthenticated, isLoading: $isLoading, needsOnboarding: $needsOnboarding, isInitial: $isInitial');
      }
      final isAuthRoute = location.startsWith('/auth');
      final isOnboardingRoute = location == '/onboarding';
      final isSplash = location == '/';

      // Valid app routes that authenticated users can access
      final isValidAppRoute = location.startsWith('/dashboard') ||
          location.startsWith('/explore') ||
          location.startsWith('/programs') ||
          location.startsWith('/schedule') ||
          location.startsWith('/booking') ||
          location.startsWith('/my-bookings') ||
          location.startsWith('/booking-details') ||
          location.startsWith('/messages') ||
          location.startsWith('/chat') ||
          location.startsWith('/profile') ||
          location.startsWith('/collaborations') ||
          location.startsWith('/checkout') ||
          location.startsWith('/payment') ||
          location.startsWith('/support') ||
          location.startsWith('/feedback') ||
          location.startsWith('/meeting') ||
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
        builder: (context, state) => Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.psychology,
                  size: 100,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(height: 24),
                const Text(
                  'Familiarise',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                const Text('Find Your Mentor'),
                const SizedBox(height: 32),
                const CircularProgressIndicator(),
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
          // Sync navigation index based on current route (role-aware)
          WidgetsBinding.instance.addPostFrameCallback((_) {
            final container = ProviderScope.containerOf(context);
            final currentPath = state.matchedLocation;
            final user = container.read(currentUserProvider);
            final role = user?.role ?? UserRole.consultee;
            final tabIndex = AppNavigationTabs.indexFromPath(currentPath, role);
            final currentIndex = container.read(navigationIndexProvider);
            if (currentIndex != tabIndex) {
              container
                  .read(navigationIndexProvider.notifier)
                  .setIndex(tabIndex);
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
          // Programs tab (Webinars & Classes)
          GoRoute(
            path: '/programs',
            name: 'programs',
            builder: (context, state) => const ProgramsScreen(),
            routes: [
              GoRoute(
                path: 'webinar/:webinarPlanId',
                name: 'webinarDetail',
                builder: (context, state) => WebinarDetailScreen(
                  webinarPlanId: state.pathParameters['webinarPlanId']!,
                ),
              ),
              GoRoute(
                path: 'class/:classPlanId',
                name: 'classDetail',
                builder: (context, state) => ClassDetailScreen(
                  classPlanId: state.pathParameters['classPlanId']!,
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
          // Schedule tab (consultant only)
          GoRoute(
            path: '/schedule',
            name: 'schedule',
            builder: (context, state) => const ScheduleScreen(),
          ),
          // Messages tab
          GoRoute(
            path: '/messages',
            name: 'messages',
            builder: (context, state) => const ChatListScreen(),
            routes: [
              // Chat room (individual conversation)
              GoRoute(
                path: ':channelId',
                name: 'chatRoom',
                builder: (context, state) => ChatRoomScreen(
                  channelId: state.pathParameters['channelId']!,
                  channel: state.extra as Channel?,
                ),
              ),
            ],
          ),
          // Profile tab
          GoRoute(
            path: '/profile',
            name: 'profile',
            builder: (context, state) => const ProfileScreen(),
            routes: [
              GoRoute(
                path: 'edit',
                name: 'editProfile',
                builder: (context, state) => const EditProfileScreen(),
              ),
              GoRoute(
                path: 'change-password',
                name: 'changePassword',
                builder: (context, state) => const ChangePasswordScreen(),
              ),
              GoRoute(
                path: 'sessions',
                name: 'activeSessions',
                builder: (context, state) => const ActiveSessionsScreen(),
              ),
            ],
          ),
          // Collaborations
          GoRoute(
            path: '/collaborations',
            name: 'collaborations',
            builder: (context, state) => const CollaborationsScreen(),
          ),
          // My Bookings (inside shell for bottom nav)
          GoRoute(
            path: '/my-bookings',
            name: 'myBookings',
            builder: (context, state) => const MyBookingsScreen(),
          ),
          // Booking Details
          GoRoute(
            path: '/booking-details/:bookingId',
            name: 'bookingDetails',
            builder: (context, state) {
              final bookingId = state.pathParameters['bookingId']!;
              final typeParam =
                  state.uri.queryParameters['type'] ?? 'CONSULTATION';
              final bookingType = BookingType.fromString(typeParam);
              return MyBookingDetailsScreen(
                bookingId: bookingId,
                bookingType: bookingType,
              );
            },
          ),
        ],
      ),

      // Appointment documents
      GoRoute(
        path: '/bookings/:bookingId/documents',
        name: 'appointmentDocuments',
        builder: (context, state) {
          final appointmentId =
              state.uri.queryParameters['appointmentId'];
          if (appointmentId == null) {
            return const Scaffold(
              body: Center(
                child: Text('Missing appointmentId'),
              ),
            );
          }
          return AppointmentDocumentsScreen(
            appointmentId: appointmentId,
          );
        },
      ),

      // Booking routes (Phase 5)
      GoRoute(
        path: '/booking/:consultantId/:planId',
        name: 'booking',
        builder: (context, state) => BookingScreen(
          consultantId: state.pathParameters['consultantId']!,
          planId: state.pathParameters['planId']!,
          planType: state.uri.queryParameters['type'] ?? 'consultation',
          forceRefresh: state.uri.queryParameters['refresh'] == 'true',
        ),
      ),
      GoRoute(
        path: '/booking/success',
        name: 'bookingSuccess',
        builder: (context, state) {
          final booking =
              state.extra is Booking ? state.extra as Booking : null;
          return BookingSuccessScreen(booking: booking);
        },
      ),
      GoRoute(
        path: '/booking/failure',
        name: 'bookingFailure',
        builder: (context, state) {
          final extra = state.extra is Map<String, dynamic>
              ? state.extra as Map<String, dynamic>
              : null;
          return BookingFailureScreen(
            errorMessage: extra?['errorMessage'] as String?,
            consultantId: extra?['consultantId'] as String?,
            planId: extra?['planId'] as String?,
            planType: extra?['planType'] as String?,
            conflictingSlots: extra?['conflictingSlots'] as List<DateTime>?,
          );
        },
      ),

      // Checkout routes (Phase 6)
      // Note: Using safe type checks because state.extra can be corrupted
      // on web page refresh (becomes _JsonMap instead of the actual type)
      GoRoute(
        path: '/checkout',
        name: 'checkout',
        builder: (context, state) {
          final booking =
              state.extra is Booking ? state.extra as Booking : null;
          // If no valid booking, redirect to my-bookings
          if (booking == null) {
            return const _InvalidStateRedirect(redirectTo: '/my-bookings');
          }
          return CheckoutScreen(booking: booking);
        },
      ),
      GoRoute(
        path: '/checkout/direct',
        name: 'checkoutDirect',
        builder: (context, state) {
          final params = state.extra is DirectCheckoutParams
              ? state.extra as DirectCheckoutParams
              : null;
          if (params == null) {
            return const _InvalidStateRedirect(redirectTo: '/explore');
          }
          return CheckoutScreen(directCheckoutParams: params);
        },
      ),
      GoRoute(
        path: '/payment/success',
        name: 'paymentSuccess',
        builder: (context, state) {
          final verification = state.extra is PaymentVerification
              ? state.extra as PaymentVerification
              : null;
          return PaymentSuccessScreen(verification: verification);
        },
      ),
      GoRoute(
        path: '/payment/failure',
        name: 'paymentFailure',
        builder: (context, state) {
          final extra = state.extra is Map<String, dynamic>
              ? state.extra as Map<String, dynamic>
              : null;
          final bookingData = extra?['booking'];
          final paramsData = extra?['directCheckoutParams'];
          return PaymentFailureScreen(
            errorMessage: extra?['message'] as String?,
            canRetry: extra?['canRetry'] as bool? ?? true,
            booking: bookingData is Booking ? bookingData : null,
            directCheckoutParams:
                paramsData is DirectCheckoutParams ? paramsData : null,
          );
        },
      ),

      // Verification routes
      GoRoute(
        path: '/verification',
        name: 'verification',
        builder: (context, state) => const VerificationStatusScreen(),
        routes: [
          GoRoute(
            path: 'submit',
            name: 'verificationSubmit',
            builder: (context, state) =>
                const VerificationSubmitScreen(),
          ),
        ],
      ),

      // Waitlist routes
      GoRoute(
        path: '/waitlist',
        name: 'waitlist',
        builder: (context, state) => const WaitlistScreen(),
      ),

      // Trial routes
      GoRoute(
        path: '/trials',
        name: 'trials',
        builder: (context, state) => const TrialListScreen(),
        routes: [
          GoRoute(
            path: 'request',
            name: 'trialRequest',
            builder: (context, state) {
              final consultantProfileId =
                  state.uri.queryParameters['consultantProfileId'];
              final subscriptionPlanId =
                  state.uri.queryParameters['subscriptionPlanId'];
              if (consultantProfileId == null ||
                  subscriptionPlanId == null) {
                return const Scaffold(
                  body: Center(
                    child: Text('Missing required parameters'),
                  ),
                );
              }
              return TrialRequestScreen(
                consultantProfileId: consultantProfileId,
                subscriptionPlanId: subscriptionPlanId,
              );
            },
          ),
        ],
      ),

      // Payout routes
      GoRoute(
        path: '/payout-accounts',
        name: 'payoutAccounts',
        builder: (context, state) => const PayoutAccountsScreen(),
        routes: [
          GoRoute(
            path: 'add',
            name: 'addPayoutAccount',
            builder: (context, state) =>
                const AddPayoutAccountScreen(),
          ),
        ],
      ),

      // Tax info routes
      GoRoute(
        path: '/tax-info',
        name: 'taxInfo',
        builder: (context, state) => const TaxInfoScreen(),
      ),

      // Staff dashboard
      GoRoute(
        path: '/staff',
        name: 'staffDashboard',
        builder: (context, state) => const StaffDashboardScreen(),
      ),

      // Maintenance route
      GoRoute(
        path: '/maintenance',
        name: 'maintenance',
        builder: (context, state) => const MaintenanceScreen(),
      ),

      // Support routes (PR#15)
      GoRoute(
        path: '/support',
        name: 'support',
        builder: (context, state) => const SupportTicketsScreen(),
        routes: [
          GoRoute(
            path: 'create',
            name: 'createTicket',
            builder: (context, state) {
              final bookingId = state.uri.queryParameters['bookingId'];
              final bookingType = state.uri.queryParameters['bookingType'];
              return CreateTicketScreen(
                bookingId: bookingId,
                bookingType: bookingType,
              );
            },
          ),
          GoRoute(
            path: ':ticketId',
            name: 'ticketDetail',
            builder: (context, state) => SupportTicketDetailScreen(
              ticketId: state.pathParameters['ticketId']!,
            ),
          ),
        ],
      ),

      // Feedback route (PR#15)
      GoRoute(
        path: '/feedback',
        name: 'feedback',
        builder: (context, state) => const FeedbackScreen(),
      ),

      // Meeting route (Phase 7)
      GoRoute(
        path: '/meeting/:appointmentId',
        name: 'meeting',
        builder: (context, state) => MeetingScreen(
          appointmentId: state.pathParameters['appointmentId']!,
        ),
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

/// Helper widget that redirects to a fallback route when route state is invalid
/// This happens on web page refresh where state.extra gets corrupted
class _InvalidStateRedirect extends StatefulWidget {
  final String redirectTo;

  const _InvalidStateRedirect({required this.redirectTo});

  @override
  State<_InvalidStateRedirect> createState() => _InvalidStateRedirectState();
}

class _InvalidStateRedirectState extends State<_InvalidStateRedirect> {
  @override
  void initState() {
    super.initState();
    // Redirect after the current frame to avoid build-time navigation
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        context.go(widget.redirectTo);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircularProgressIndicator(),
            const SizedBox(height: 16),
            Text(
              'Redirecting...',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
