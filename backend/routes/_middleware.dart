import 'package:dart_frog/dart_frog.dart';
import '../lib/utils/auth_middleware.dart';
import '../lib/services/supabase_service.dart';
import 'package:dotenv/dotenv.dart';

Handler middleware(Handler handler) {
  return handler
      .use(requestLogger())
      .use(_initializeServices())
      .use(authMiddleware())
      .use(_corsMiddleware());
}

Middleware _initializeServices() {
  return (handler) {
    // Load environment variables
    final env = DotEnv()..load();
    
    // Initialize Supabase service
    final supabaseService = SupabaseService.instance;
    supabaseService.initialize(
      url: env['SUPABASE_URL'] ?? '',
      serviceRoleKey: env['SUPABASE_SERVICE_ROLE_KEY'] ?? '',
    );

    return handler;
  };
}

Middleware _corsMiddleware() {
  return (handler) {
    return (context) async {
      // Handle preflight requests
      if (context.request.method == HttpMethod.options) {
        return Response(
          statusCode: 200,
          headers: {
            'Access-Control-Allow-Origin': '*',
            'Access-Control-Allow-Methods': 'GET, POST, PUT, DELETE, OPTIONS',
            'Access-Control-Allow-Headers': 'Content-Type, Authorization',
            'Access-Control-Max-Age': '3600',
          },
        );
      }

      final response = await handler(context);
      
      // Add CORS headers to all responses
      return response.copyWith(
        headers: {
          ...response.headers,
          'Access-Control-Allow-Origin': '*',
          'Access-Control-Allow-Methods': 'GET, POST, PUT, DELETE, OPTIONS',
          'Access-Control-Allow-Headers': 'Content-Type, Authorization',
        },
      );
    };
  };
}