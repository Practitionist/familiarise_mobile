import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'config/supabase_config.dart';
// import 'services/prisma_service.dart'; // Temporarily disabled
import 'screens/home_screen.dart';
import 'screens/explore_experts_screen.dart';
import 'providers/app_state_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  await dotenv.load(fileName: ".env");
  await SupabaseConfig.initialize();
  
  // Temporarily disable Prisma initialization
  /*
  // Initialize Prisma only on non-web platforms (web doesn't support binary engines)
  if (!kIsWeb) {
    try {
      await PrismaService.initialize(
        databaseUrl: dotenv.env['DATABASE_URL'],
      );
      
      // Test connection
      final connectionTest = await PrismaService.testConnection();
      print('Prisma connection test: ${connectionTest ? "SUCCESS" : "FAILED"}');
    } catch (e) {
      print('Prisma initialization failed: $e');
      print('Falling back to Supabase only mode');
    }
  } else {
    print('Running on web platform - using Supabase only (Prisma not supported on web)');
  }
  */
  
  print('Running in Supabase-only mode (Prisma temporarily disabled)');
  
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
      path: '/explore-experts',
      builder: (BuildContext context, GoRouterState state) {
        return const ExploreExpertsScreen();
      },
    ),
    GoRoute(
      path: '/consultant/:id',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen(); // TODO: Create ConsultantDetailScreen
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