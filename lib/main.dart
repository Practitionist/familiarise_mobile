import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';
import 'config/supabase_config.dart';
import 'screens/home_screen.dart';
import 'screens/destination_detail_screen.dart';
import 'screens/tour_schedule_screen.dart';
import 'providers/app_state_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  await SupabaseConfig.initialize();
  
  runApp(const FamiliariseApp());
}

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
    ),
    GoRoute(
      path: '/destination/:id',
      builder: (BuildContext context, GoRouterState state) {
        final destinationId = state.pathParameters['id']!;
        return DestinationDetailScreen(destinationId: destinationId);
      },
    ),
    GoRoute(
      path: '/tour-schedule/:tourId',
      builder: (BuildContext context, GoRouterState state) {
        final tourId = state.pathParameters['tourId']!;
        return TourScheduleScreen(tourId: tourId);
      },
    ),
  ],
);

class FamiliariseApp extends StatelessWidget {
  const FamiliariseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AppStateProvider()),
      ],
      child: MaterialApp.router(
        title: 'Familiarise',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color(0xFF1E88E5),
            brightness: Brightness.light,
          ),
          fontFamily: 'SF Pro Display',
        ),
        routerConfig: _router,
      ),
    );
  }
}