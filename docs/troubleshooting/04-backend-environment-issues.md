# Backend Environment Issues

This document covers common issues with environment variables and dependency injection in the Dart backend (dart_frog).

## DotEnv vs Platform.environment

### Problem

Services using `Platform.environment['VAR_NAME']` return `null` even though the `.env` file contains the variable.

### Symptoms

```dart
// In service constructor
final apiKey = Platform.environment['STREAM_API_KEY'] ?? '';
// apiKey is empty string, service fails with "not configured" error
```

The `.env` file clearly has:
```
STREAM_API_KEY=your_actual_key_here
```

But the service doesn't see it.

### Root Cause

**`dotenv` and `Platform.environment` are completely separate systems:**

| System | Source | When Loaded | Scope |
|--------|--------|-------------|-------|
| `Platform.environment` | OS shell environment | Process start | System-level |
| `dotenv` package | `.env` file | `load()` call | In-memory map |

The `dotenv` package loads `.env` into its own `Map`, accessible via `dotenv.env['KEY']`. It does **NOT** populate `Platform.environment`.

```dart
// These are DIFFERENT:
Platform.environment['KEY']  // OS environment variables only
dotenv.env['KEY']           // Variables from .env file only
```

### Solution

Use dart_frog's provider system to inject configuration explicitly.

#### Step 1: Create Provider in main.dart

```dart
import 'package:dart_frog/dart_frog.dart';
import 'package:dotenv/dotenv.dart';

Future<HttpServer> run(Handler handler, InternetAddress ip, int port) async {
  // Load environment variables from .env file
  final dotEnv = DotEnv()..load();

  // Create services with explicit configuration
  final streamService = StreamService(
    apiKey: dotEnv['STREAM_API_KEY'],
    apiSecret: dotEnv['STREAM_API_SECRET'],
  );

  // Wrap handler with providers
  final wrappedHandler = handler
      .use(provider<StreamService>((context) => streamService));

  return serve(wrappedHandler, ip, port);
}
```

#### Step 2: Update Service Constructor

Accept explicit parameters instead of reading from Platform.environment:

```dart
class StreamService {
  final String _apiKey;
  final String _apiSecret;

  StreamService({
    String? apiKey,
    String? apiSecret,
  })  : _apiKey = apiKey ?? Platform.environment['STREAM_API_KEY'] ?? '',
        _apiSecret = apiSecret ?? Platform.environment['STREAM_API_SECRET'] ?? '';

  bool get isConfigured => _apiKey.isNotEmpty && _apiSecret.isNotEmpty;

  // ... rest of service
}
```

The fallback to `Platform.environment` allows the service to work in both:
- **dart_frog**: Uses injected values from provider
- **Direct execution**: Uses OS environment variables

#### Step 3: Access Service in Routes

```dart
// routes/api/stream/token/index.dart
Future<Response> onRequest(RequestContext context) async {
  final streamService = context.read<StreamService>();

  if (!streamService.isConfigured) {
    return Response.json(
      body: {'error': 'Stream service not configured'},
      statusCode: 503,
    );
  }

  // Use streamService...
}
```

---

## Common Patterns

### Environment Variable Priority

Implement a priority chain for configuration:

```dart
String getConfig(String key, DotEnv? dotEnv) {
  // 1. Check OS environment (for production/CI)
  final osValue = Platform.environment[key];
  if (osValue != null && osValue.isNotEmpty) return osValue;

  // 2. Check .env file (for local development)
  final dotEnvValue = dotEnv?[key];
  if (dotEnvValue != null && dotEnvValue.isNotEmpty) return dotEnvValue;

  // 3. Return empty (service should handle missing config)
  return '';
}
```

### Service Configuration Class

For complex services, use a configuration class:

```dart
class StreamConfig {
  final String apiKey;
  final String apiSecret;

  StreamConfig({
    required this.apiKey,
    required this.apiSecret,
  });

  factory StreamConfig.fromEnv(DotEnv dotEnv) {
    return StreamConfig(
      apiKey: dotEnv['STREAM_API_KEY'] ?? '',
      apiSecret: dotEnv['STREAM_API_SECRET'] ?? '',
    );
  }

  bool get isValid => apiKey.isNotEmpty && apiSecret.isNotEmpty;
}
```

### Provider Chaining

Register multiple services with dependency resolution:

```dart
Future<HttpServer> run(Handler handler, InternetAddress ip, int port) async {
  final dotEnv = DotEnv()..load();

  // Database client (no dependencies)
  final db = DatabaseClient(dotEnv['DATABASE_URL']);
  await db.connect();

  // Services with db dependency
  final userRepo = UserRepository(db);
  final streamService = StreamService(
    apiKey: dotEnv['STREAM_API_KEY'],
    apiSecret: dotEnv['STREAM_API_SECRET'],
  );

  final wrappedHandler = handler
      .use(provider<DatabaseClient>((ctx) => db))
      .use(provider<UserRepository>((ctx) => userRepo))
      .use(provider<StreamService>((ctx) => streamService));

  return serve(wrappedHandler, ip, port);
}
```

---

## Debugging Checklist

When environment variables aren't working:

1. **Check .env file exists** in project root (not backend subfolder unless configured)
2. **Verify .env syntax** - no quotes needed for simple values
3. **Check load() is called** before accessing variables
4. **Use correct accessor** - `dotenv.env['KEY']` not `Platform.environment['KEY']`
5. **Verify provider registration** in main.dart
6. **Check route uses context.read()** not direct instantiation

### Quick Debug Script

Add to your main.dart temporarily:

```dart
Future<HttpServer> run(Handler handler, InternetAddress ip, int port) async {
  final dotEnv = DotEnv()..load();

  // Debug: Print all loaded env vars
  print('=== Loaded Environment Variables ===');
  dotEnv.map.forEach((key, value) {
    final masked = value.length > 4
        ? '${value.substring(0, 4)}...'
        : '****';
    print('$key: $masked');
  });
  print('===================================');

  // ... rest of setup
}
```

---

## Related Files

- `backend/main.dart` - Provider registration
- `backend/lib/services/stream_service.dart` - Service with config injection
- `backend/.env` - Environment variables (gitignored)
- `backend/.env.example` - Template for required variables

## External Resources

- [dart_frog Dependency Injection](https://dartfrog.vgv.dev/docs/basics/dependency-injection)
- [dotenv package](https://pub.dev/packages/dotenv)
- [Dart Platform.environment](https://api.dart.dev/stable/dart-io/Platform/environment.html)
