import 'dart:io' as io;

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/rate_limiter.dart';
import 'package:dart_frog/dart_frog.dart';

/// Auth mutation routes that receive a stricter per-IP rate limit.
const Set<String> _strictAuthPaths = {
  '/api/auth/email/sign-in',
  '/api/auth/email/sign-up',
  '/api/auth/forgot-password',
  '/api/auth/reset-password',
  '/api/auth/change-password',
  '/api/auth/set-password',
};

/// Default per-IP request limit per 60s window for general API routes.
int get _defaultRateLimit =>
    int.tryParse(io.Platform.environment['RATE_LIMIT_MAX_REQUESTS'] ?? '') ??
    120;

/// Stricter per-IP request limit per 60s window for auth mutation routes.
int get _authRateLimit =>
    int.tryParse(
      io.Platform.environment['AUTH_RATE_LIMIT_MAX_REQUESTS'] ?? '',
    ) ??
    30;

/// Optional environment override for testing middleware behavior.
Map<String, String>? middlewareEnvironmentOverride;

Map<String, String> get _env =>
    middlewareEnvironmentOverride ?? io.Platform.environment;

/// Cached maintenance window state to avoid hitting Postgres on every request.
Map<String, dynamic>? _cachedMaintenanceWindow;
DateTime? _maintenanceCacheCheckedAt;
const Duration _maintenanceCacheTtl = Duration(seconds: 30);

/// Clear cached maintenance state (useful in tests).
void clearMiddlewareState() {
  _cachedMaintenanceWindow = null;
  _maintenanceCacheCheckedAt = null;
  RateLimiter.instance.clear();
}

bool _isHealthOrMaintenanceRoute(String path) {
  return path == '/api/health' ||
      path.startsWith('/api/health/') ||
      path == '/api/maintenance/status' ||
      path.startsWith('/api/maintenance/');
}

Future<Map<String, dynamic>?> _resolveMaintenanceWindow(
  RequestContext context,
) async {
  final envMode = (_env['MAINTENANCE_MODE'] ?? '').trim().toUpperCase();
  if (envMode == 'TRUE' || envMode == '1' || envMode == 'OFFLINE') {
    return const {'phase': 'OFFLINE', 'reason': 'Scheduled maintenance'};
  }
  if (envMode == 'DEGRADED') {
    return const {'phase': 'DEGRADED', 'reason': 'Degraded maintenance mode'};
  }

  final now = DateTime.now().toUtc();
  if (_maintenanceCacheCheckedAt != null &&
      now.difference(_maintenanceCacheCheckedAt!) < _maintenanceCacheTtl) {
    return _cachedMaintenanceWindow;
  }

  try {
    final db = context.read<DatabaseClient>();
    _cachedMaintenanceWindow = await db.maintenance.getActive();
    _maintenanceCacheCheckedAt = now;
    return _cachedMaintenanceWindow;
  } catch (_) {
    // DatabaseClient not provided in context or transient DB error.
    _maintenanceCacheCheckedAt = now;
    return null;
  }
}

/// Root middleware - applies to all routes.
/// Handles CORS, `/api/health` bypass, per-IP sliding-window rate limiting,
/// and maintenance mode gating.
Handler middleware(Handler handler) {
  return (context) async {
    final origin = context.request.headers['origin'];
    final corsHeaders = _getCorsHeaders(origin);

    // Handle CORS preflight requests immediately
    if (context.request.method == HttpMethod.options) {
      return Response(
        headers: corsHeaders,
      );
    }

    final rawPath = context.request.uri.path;
    final path = rawPath.isEmpty
        ? '/'
        : (rawPath.startsWith('/') ? rawPath : '/$rawPath');

    // Bypass rate limiting and maintenance checks for /api/health
    if (path == '/api/health' || path.startsWith('/api/health/')) {
      final response = await handler(context);
      return response.copyWith(
        headers: {
          ...response.headers,
          ...corsHeaders,
        },
      );
    }

    // Per-IP sliding-window rate limiting
    RateLimiter limiter;
    try {
      limiter = context.read<RateLimiter>();
    } catch (_) {
      limiter = RateLimiter.instance;
    }

    final clientIp = RateLimiter.extractClientIp(context);
    final isStrictAuthRoute = _strictAuthPaths.contains(path);
    final bucketKey = isStrictAuthRoute ? 'auth:$clientIp' : 'api:$clientIp';
    final limitOverride = isStrictAuthRoute
        ? (limiter == RateLimiter.instance ? _authRateLimit : null)
        : (limiter == RateLimiter.instance ? _defaultRateLimit : null);

    final rateResult = limiter.check(
      bucketKey,
      maxRequestsOverride: limitOverride,
    );
    final rateHeaders = rateResult.toHeaders();

    if (!rateResult.allowed) {
      return Response.json(
        statusCode: io.HttpStatus.tooManyRequests,
        headers: {
          ...corsHeaders,
          ...rateHeaders,
        },
        body: {
          'error': {
            'message': 'Too many requests. Please try again later.',
            'code': 'RATE_LIMIT_EXCEEDED',
          },
          'retryAfter': rateResult.retryAfterSeconds,
        },
      );
    }

    // Maintenance mode gating (bypassed for health & maintenance status)
    var extraHeaders = <String, String>{};
    if (!_isHealthOrMaintenanceRoute(path)) {
      final activeMaintenance = await _resolveMaintenanceWindow(context);
      if (activeMaintenance != null) {
        final phase =
            (activeMaintenance['phase']?.toString() ?? '').toUpperCase();
        if (phase == 'OFFLINE') {
          return Response.json(
            statusCode: io.HttpStatus.serviceUnavailable,
            headers: {
              ...corsHeaders,
              ...rateHeaders,
              'Retry-After': '60',
              'X-Maintenance-Phase': 'OFFLINE',
            },
            body: {
              'error': {
                'message': 'Service is temporarily under maintenance. '
                    'Please try again shortly.',
                'code': 'MAINTENANCE_MODE',
              },
              'maintenance': true,
              'data': activeMaintenance,
            },
          );
        } else if (phase == 'DEGRADED') {
          extraHeaders = {'X-Maintenance-Phase': 'DEGRADED'};
        }
      }
    }

    // Continue with the request
    final response = await handler(context);

    // Add CORS and rate-limit headers to all responses
    return response.copyWith(
      headers: {
        ...response.headers,
        ...corsHeaders,
        ...rateHeaders,
        ...extraHeaders,
      },
    );
  };
}

/// Pattern to match any localhost or 127.0.0.1 origin (any port)
final _localhostPattern = RegExp(r'^http://(localhost|127\.0\.0\.1)(:\d+)?$');

/// Get CORS headers based on environment
/// In production, restricts origins; in development, allows any localhost
Map<String, String> _getCorsHeaders(String? requestOrigin) {
  final isProduction = _env['DART_ENV'] == 'production';

  String allowedOrigin;
  if (isProduction) {
    allowedOrigin = _env['ALLOWED_ORIGINS'] ?? 'https://familiarise.com';
  } else {
    // Reflect the request origin if it's any localhost variant
    allowedOrigin =
        (requestOrigin != null && _localhostPattern.hasMatch(requestOrigin))
            ? requestOrigin
            : 'http://localhost:3000';
  }

  return {
    'Access-Control-Allow-Origin': allowedOrigin,
    'Access-Control-Allow-Methods': 'GET, POST, PUT, DELETE, OPTIONS',
    'Access-Control-Allow-Headers':
        'Origin, Content-Type, Authorization, Accept',
    'Access-Control-Max-Age': '86400',
  };
}
