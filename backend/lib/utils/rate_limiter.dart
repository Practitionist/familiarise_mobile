import 'dart:collection';
import 'dart:io' as io;

import 'package:dart_frog/dart_frog.dart';

/// Result of a rate-limit check for a single request.
class RateLimitResult {
  /// Creates a [RateLimitResult].
  const RateLimitResult({
    required this.allowed,
    required this.limit,
    required this.remaining,
    required this.retryAfterSeconds,
    required this.resetAt,
  });

  /// Whether the request is permitted to proceed.
  final bool allowed;

  /// Maximum requests allowed within the current window.
  final int limit;

  /// Remaining requests allowed in the current window.
  final int remaining;

  /// Seconds until the client can retry (`0` when [allowed] is `true`).
  final int retryAfterSeconds;

  /// UTC timestamp when the current rate-limit window resets.
  final DateTime resetAt;

  /// Standard HTTP headers describing the rate-limit state.
  Map<String, String> toHeaders() {
    final resetEpochSeconds = resetAt.millisecondsSinceEpoch ~/ 1000;
    return {
      'X-RateLimit-Limit': limit.toString(),
      'X-RateLimit-Remaining': remaining.toString(),
      'X-RateLimit-Reset': resetEpochSeconds.toString(),
      if (!allowed) 'Retry-After': retryAfterSeconds.toString(),
    };
  }
}

class _SlidingWindowBucket {
  final Queue<DateTime> timestamps = Queue<DateTime>();
  DateTime lastSeen = DateTime.fromMillisecondsSinceEpoch(0, isUtc: true);
}

/// Sliding-window per-key (IP / route) rate limiter with bounded memory and
/// automatic periodic pruning for high-concurrency traffic.
class RateLimiter {
  /// Creates a [RateLimiter] with configurable window and capacity.
  RateLimiter({
    this.maxRequests = 120,
    this.window = const Duration(minutes: 1),
    this.maxTrackedKeys = 10000,
    this.pruneInterval = const Duration(minutes: 1),
  })  : assert(maxRequests > 0, 'maxRequests must be positive'),
        assert(maxTrackedKeys > 0, 'maxTrackedKeys must be positive');

  /// Shared default singleton instance used by the root middleware.
  static final RateLimiter instance = RateLimiter();

  /// Optional environment override for testing proxy header behavior.
  static Map<String, String>? environmentOverride;

  /// Default maximum requests per [window] per key.
  final int maxRequests;

  /// Sliding window duration.
  final Duration window;

  /// Upper bound on tracked keys in memory to prevent unbounded growth during
  /// distributed floods.
  final int maxTrackedKeys;

  /// Minimum interval between automatic expired-bucket sweeps.
  final Duration pruneInterval;

  /// Insertion-ordered map used for LRU-style eviction when [maxTrackedKeys]
  /// is exceeded.
  final LinkedHashMap<String, _SlidingWindowBucket> _buckets =
      LinkedHashMap<String, _SlidingWindowBucket>();

  DateTime? _lastPrunedAt;

  /// Number of currently tracked keys in memory.
  int get trackedKeyCount => _buckets.length;

  /// Evaluate and record a request for [key].
  RateLimitResult check(
    String key, {
    DateTime? now,
    int? maxRequestsOverride,
  }) {
    final currentTime = (now ?? DateTime.now()).toUtc();
    final effectiveLimit =
        (maxRequestsOverride != null && maxRequestsOverride > 0)
            ? maxRequestsOverride
            : maxRequests;
    final windowStart = currentTime.subtract(window);

    _maybePrune(currentTime);

    var bucket = _buckets.remove(key);
    if (bucket == null) {
      if (_buckets.length >= maxTrackedKeys) {
        // Evict oldest key to keep memory strictly bounded
        _buckets.remove(_buckets.keys.first);
      }
      bucket = _SlidingWindowBucket();
    }
    // Re-insert at the end to maintain recency ordering
    _buckets[key] = bucket;
    bucket.lastSeen = currentTime;

    while (bucket.timestamps.isNotEmpty &&
        !bucket.timestamps.first.isAfter(windowStart)) {
      bucket.timestamps.removeFirst();
    }

    if (bucket.timestamps.length >= effectiveLimit) {
      final oldestInWindow = bucket.timestamps.first;
      final resetAt = oldestInWindow.add(window);
      final diffMs = resetAt.difference(currentTime).inMilliseconds;
      final retryAfterSeconds = diffMs <= 0 ? 1 : (diffMs / 1000).ceil();

      return RateLimitResult(
        allowed: false,
        limit: effectiveLimit,
        remaining: 0,
        retryAfterSeconds: retryAfterSeconds,
        resetAt: resetAt,
      );
    }

    bucket.timestamps.addLast(currentTime);
    final remaining = effectiveLimit - bucket.timestamps.length;
    final resetAt = bucket.timestamps.first.add(window);

    return RateLimitResult(
      allowed: true,
      limit: effectiveLimit,
      remaining: remaining < 0 ? 0 : remaining,
      retryAfterSeconds: 0,
      resetAt: resetAt,
    );
  }

  /// Convenience boolean check for [key].
  bool isAllowed(
    String key, {
    DateTime? now,
    int? maxRequestsOverride,
  }) {
    return check(
      key,
      now: now,
      maxRequestsOverride: maxRequestsOverride,
    ).allowed;
  }

  void _maybePrune(DateTime currentTime) {
    if (_lastPrunedAt == null ||
        currentTime.difference(_lastPrunedAt!) >= pruneInterval) {
      prune(currentTime);
    }
  }

  /// Sweep expired timestamps and remove empty buckets.
  void prune([DateTime? now]) {
    final currentTime = (now ?? DateTime.now()).toUtc();
    final windowStart = currentTime.subtract(window);
    _lastPrunedAt = currentTime;

    final keysToRemove = <String>[];
    _buckets.forEach((key, bucket) {
      while (bucket.timestamps.isNotEmpty &&
          !bucket.timestamps.first.isAfter(windowStart)) {
        bucket.timestamps.removeFirst();
      }
      if (bucket.timestamps.isEmpty) {
        keysToRemove.add(key);
      }
    });

    for (final key in keysToRemove) {
      _buckets.remove(key);
    }

    while (_buckets.length > maxTrackedKeys) {
      _buckets.remove(_buckets.keys.first);
    }
  }

  /// Clear all tracked buckets (useful in tests).
  void clear() {
    _buckets.clear();
    _lastPrunedAt = null;
  }

  static int _resolveTrustedProxyHops(Map<String, String> env) {
    final rawHops = (env['TRUSTED_PROXY_HOPS'] ?? '').trim();
    if (rawHops.isNotEmpty) {
      final parsed = int.tryParse(rawHops);
      if (parsed != null && parsed >= 0) return parsed;
    }

    final rawTrustProxy = (env['TRUST_PROXY'] ?? '').trim().toLowerCase();
    if (rawTrustProxy == 'true' || rawTrustProxy == '1') {
      return 1;
    }
    if (rawTrustProxy.isNotEmpty) {
      final parsed = int.tryParse(rawTrustProxy);
      if (parsed != null && parsed > 0) return parsed;
    }

    return 0;
  }

  /// Extract client IP address from socket info or trusted reverse-proxy
  /// headers when `TRUST_PROXY` / `TRUSTED_PROXY_HOPS` is configured.
  static String extractClientIp(
    RequestContext context, {
    Map<String, String>? environment,
  }) {
    final env = environment ?? environmentOverride ?? io.Platform.environment;
    final trustedHops = _resolveTrustedProxyHops(env);

    if (trustedHops > 0) {
      final headers = context.request.headers;

      final forwardedFor = headers['x-forwarded-for'];
      if (forwardedFor != null && forwardedFor.trim().isNotEmpty) {
        final ips = forwardedFor
            .split(',')
            .map((ip) => ip.trim())
            .where((ip) => ip.isNotEmpty)
            .toList();
        if (ips.isNotEmpty) {
          final index = (ips.length - trustedHops).clamp(0, ips.length - 1);
          return ips[index];
        }
      }

      final cfConnectingIp = headers['cf-connecting-ip'];
      if (cfConnectingIp != null && cfConnectingIp.trim().isNotEmpty) {
        return cfConnectingIp.trim();
      }

      final realIp = headers['x-real-ip'];
      if (realIp != null && realIp.trim().isNotEmpty) {
        return realIp.trim();
      }
    }

    try {
      final remoteAddress =
          context.request.connectionInfo.remoteAddress.address;
      if (remoteAddress.isNotEmpty) {
        return remoteAddress;
      }
    } catch (_) {
      // connectionInfo may throw on certain mock Request objects in unit tests
    }

    return 'unknown';
  }
}
