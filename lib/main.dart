import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'config/supabase_config.dart';
import 'screens/home_screen.dart';
import 'screens/explore_experts_screen.dart';
import 'providers/app_state_provider.dart';
import 'services/api_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  await dotenv.load(fileName: ".env");
  await SupabaseConfig.initialize();
  ApiService().initialize();
  
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