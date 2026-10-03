import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:backend/services/auth/auth_service.dart';
import 'package:backend/services/auth/jwt_service.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:http/http.dart' as http;

/// Default TTL for the in-memory verified-session cache (30 seconds).
const Duration sessionCacheTtl = Duration(seconds: 30);

/// Maximum number of cached session entries before automatic pruning.
const int _maxSessionCacheEntries = 5000;

/// Optional environment override for testing Redis revocation in unit tests.
Map<String, String>? authUtilsEnvironmentOverride;

/// Optional HTTP client override for testing Redis revocation in unit tests.
http.Client? authUtilsHttpClientOverride;

Map<String, String> get _env =>
    authUtilsEnvironmentOverride ?? Platform.environment;

String get _upstashUrl => _env['UPSTASH_REDIS_REST_URL'] ?? '';
String get _upstashToken => _env['UPSTASH_REDIS_REST_TOKEN'] ?? '';

bool get _isRedisConfigured =>
    _upstashUrl.isNotEmpty && _upstashToken.isNotEmpty;

Future<void> _publishRevocationMarker(String key) async {
  if (!_isRedisConfigured) return;
  try {
    final encodedKey = Uri.encodeComponent(key);
    final ttlMs = sessionCacheTtl.inMilliseconds;
    final url = Uri.parse('$_upstashUrl/set/$encodedKey/1/px/$ttlMs');
    final client = authUtilsHttpClientOverride;
    final future = client != null
        ? client.post(
            url,
            headers: {'Authorization': 'Bearer $_upstashToken'},
          )
        : http.post(
            url,
            headers: {'Authorization': 'Bearer $_upstashToken'},
          );
    await future.timeout(const Duration(seconds: 2));
  } catch (_) {
    // Best-effort cross-replica revocation broadcast
  }
}

Future<bool> _isRevokedInRedis({
  required String token,
  required String sessionId,
  required String userId,
}) async {
  if (!_isRedisConfigured) return false;
  try {
    final keys = <String>[
      Uri.encodeComponent('session:revoked:token:$token'),
      Uri.encodeComponent('session:revoked:session:$sessionId'),
      if (userId.isNotEmpty)
        Uri.encodeComponent('session:revoked:user:$userId'),
    ];
    final url = Uri.parse('$_upstashUrl/mget/${keys.join('/')}');
    final client = authUtilsHttpClientOverride;
    final future = client != null
        ? client.post(
            url,
            headers: {'Authorization': 'Bearer $_upstashToken'},
          )
        : http.post(
            url,
            headers: {'Authorization': 'Bearer $_upstashToken'},
          );
    final response = await future.timeout(const Duration(seconds: 2));
    if (response.statusCode == 200) {
      final decoded = jsonDecode(response.body);
      if (decoded is Map<String, dynamic>) {
        final result = decoded['result'];
        if (result is List) {
          return result.any((entry) => entry != null);
        }
      }
    }
  } catch (_) {
    // On transient Redis error during cache check, evict local cache entry
    // so verification falls back to authoritative Postgres Session check.
    return true;
  }
  return false;
}

class _CachedSessionEntry {
  const _CachedSessionEntry({
    required this.token,
    required this.sessionId,
    required this.userId,
    required this.sessionData,
    required this.expiresAt,
  });

  final String token;
  final String sessionId;
  final String userId;
  final Map<String, dynamic> sessionData;
  final DateTime expiresAt;

  bool isExpired([DateTime? now]) =>
      (now ?? DateTime.now().toUtc()).isAfter(expiresAt);
}

final Map<String, _CachedSessionEntry> _sessionCache =
    <String, _CachedSessionEntry>{};

/// Prune expired entries from the verified-session cache.
void pruneSessionCache([DateTime? now]) {
  final reference = now ?? DateTime.now().toUtc();
  _sessionCache.removeWhere((_, entry) => entry.isExpired(reference));
}

/// Invalidate cached session verification for [token] (or clear all if null).
///
/// Also evicts any cache entry whose `sessionId` or `userId` matches [token],
/// and publishes a 30s Redis revocation marker when Upstash Redis is configured.
void invalidateSessionCache([String? token]) {
  if (token == null || token.isEmpty) {
    _sessionCache.clear();
    return;
  }
  _sessionCache.remove(token);
  _sessionCache.removeWhere(
    (_, entry) => entry.sessionId == token || entry.userId == token,
  );
  unawaited(_publishRevocationMarker('session:revoked:token:$token'));
  unawaited(_publishRevocationMarker('session:revoked:session:$token'));
}

/// Invalidate all cached sessions belonging to [userId].
void invalidateUserSessionsCache(String userId) {
  _sessionCache.removeWhere((_, entry) => entry.userId == userId);
  if (userId.isNotEmpty) {
    unawaited(_publishRevocationMarker('session:revoked:user:$userId'));
  }
}

/// Invalidate all cached sessions matching [sessionId].
void invalidateSessionIdCache(String sessionId) {
  _sessionCache.removeWhere((_, entry) => entry.sessionId == sessionId);
  if (sessionId.isNotEmpty) {
    unawaited(_publishRevocationMarker('session:revoked:session:$sessionId'));
  }
}

/// Clear all entries from the verified-session cache.
void clearSessionCache() {
  _sessionCache.clear();
}

/// Extract raw Bearer token from the request's `Authorization` header.
String? extractBearerToken(RequestContext context) {
  final authHeader = context.request.headers['authorization'];
  if (authHeader == null || !authHeader.startsWith('Bearer ')) {
    return null;
  }
  final token = authHeader.substring(7).trim();
  return token.isEmpty ? null : token;
}

/// Extract user ID from JWT token in Authorization header
///
/// Returns null if:
/// - Authorization header is missing
/// - Token doesn't start with "Bearer "
/// - Token is invalid or expired
///
/// Usage:
/// ```dart
/// final userId = getUserIdFromToken(context);
/// if (userId == null) {
///   return Response.json(statusCode: 401, body: {'error': 'Unauthorized'});
/// }
/// ```
String? getUserIdFromToken(RequestContext context) {
  final token = extractBearerToken(context);
  if (token == null) {
    return null;
  }

  final jwtService = context.read<JwtService>();
  final payload = jwtService.tryVerify(token);

  return payload?['userId'] as String?;
}

/// Extract session ID from JWT token in Authorization header.
String? getSessionIdFromToken(RequestContext context) {
  final token = extractBearerToken(context);
  if (token == null) {
    return null;
  }

  final jwtService = context.read<JwtService>();
  final payload = jwtService.tryVerify(token);

  return payload?['sessionId'] as String?;
}

/// Verify both the JWT signature and active Postgres `Session` + `User` status,
/// backed by a short-TTL (30s) in-memory cache and cross-replica Upstash Redis
/// revocation check so high-concurrency bursts do not hammer Postgres on
/// repeated requests with the same token.
///
/// Returns the `{ 'session': ..., 'user': ... }` map when valid, or `null`
/// if the token is missing, invalid, expired, or its session was revoked.
Future<Map<String, dynamic>?> verifyActiveUserSession(
  RequestContext context, {
  DateTime? now,
}) async {
  final token = extractBearerToken(context);
  if (token == null) {
    return null;
  }

  final jwtService = context.read<JwtService>();
  final payload = jwtService.tryVerify(token);
  if (payload == null) {
    invalidateSessionCache(token);
    return null;
  }

  final sessionId = payload['sessionId'] as String?;
  if (sessionId == null || sessionId.isEmpty) {
    invalidateSessionCache(token);
    return null;
  }

  final currentTime = now ?? DateTime.now().toUtc();
  final cached = _sessionCache[token];
  if (cached != null) {
    if (!cached.isExpired(currentTime) && cached.sessionId == sessionId) {
      final revokedRemotely = await _isRevokedInRedis(
        token: token,
        sessionId: sessionId,
        userId: cached.userId,
      );
      if (!revokedRemotely) {
        return cached.sessionData;
      }
    }
    _sessionCache.remove(token);
  }

  final authService = context.read<AuthService>();
  final result = await authService.getSession(sessionId);
  if (result == null || result['user'] == null) {
    invalidateSessionCache(token);
    return null;
  }

  final userMap = result['user'];
  final sessionUserId = userMap is Map ? userMap['id'] as String? : null;
  final payloadUserId = payload['userId'] as String?;
  if (payloadUserId != null &&
      sessionUserId != null &&
      payloadUserId != sessionUserId) {
    invalidateSessionCache(token);
    return null;
  }

  if (_sessionCache.length >= _maxSessionCacheEntries) {
    pruneSessionCache(currentTime);
    if (_sessionCache.length >= _maxSessionCacheEntries) {
      _sessionCache.remove(_sessionCache.keys.first);
    }
  }

  final resolvedUserId = payloadUserId ?? sessionUserId ?? '';
  _sessionCache[token] = _CachedSessionEntry(
    token: token,
    sessionId: sessionId,
    userId: resolvedUserId,
    sessionData: result,
    expiresAt: currentTime.add(sessionCacheTtl),
  );

  return result;
}
