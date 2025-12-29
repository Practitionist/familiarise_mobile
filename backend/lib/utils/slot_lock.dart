import 'dart:convert';
import 'dart:io';
import 'package:backend/utils/sentry_logger.dart';
import 'package:http/http.dart' as http;

/// Distributed locking utility for slot booking using Upstash Redis
///
/// Uses the same Redis instance as the web app to ensure consistent
/// locking across both platforms.
///
/// Lock key format: `slot-lock:{consultantProfileId}:{slotStartTimeISO}`
class SlotLock {

  /// Lock TTL in milliseconds (60 seconds - matches web app)
  static const int _lockTtlMs = 60000;

  /// Get Upstash Redis REST URL from environment
  static String get _upstashUrl =>
      Platform.environment['UPSTASH_REDIS_REST_URL'] ?? '';

  /// Get Upstash Redis token from environment
  static String get _upstashToken =>
      Platform.environment['UPSTASH_REDIS_REST_TOKEN'] ?? '';

  /// Check if Redis is configured
  static bool get isConfigured =>
      _upstashUrl.isNotEmpty && _upstashToken.isNotEmpty;

  /// Generate a consistent lock key for a slot
  static String _generateLockKey(
    String consultantProfileId,
    DateTime slotStartTime,
  ) {
    final isoTime = slotStartTime.toUtc().toIso8601String();
    return 'slot-lock:$consultantProfileId:$isoTime';
  }

  /// Acquire a distributed lock for a slot booking
  ///
  /// Returns the lock value (timestamp) if acquired successfully,
  /// or null if the lock is already held by another process.
  ///
  /// Uses SET NX PX pattern for atomic lock acquisition.
  static Future<String?> acquireSlotLock(
    String consultantProfileId,
    DateTime slotStartTime,
  ) async {
    if (!isConfigured) {
      // Redis not configured - skip locking (for development)
      return 'no-redis-${DateTime.now().millisecondsSinceEpoch}';
    }

    final lockKey = _generateLockKey(consultantProfileId, slotStartTime);
    final lockValue = DateTime.now().millisecondsSinceEpoch.toString();

    try {
      // Use Upstash REST API: SET key value NX PX ttl
      // NX = only set if not exists
      // PX = expiry in milliseconds
      final url = '$_upstashUrl/set/$lockKey/$lockValue/nx/px/$_lockTtlMs';
      final response = await http.post(
        Uri.parse(url),
        headers: {'Authorization': 'Bearer $_upstashToken'},
      ).timeout(const Duration(seconds: 5));

      if (response.statusCode == 200) {
        final result = jsonDecode(response.body) as Map<String, dynamic>;
        // Upstash returns {"result": "OK"} on success,
        // {"result": null} if key exists
        if (result['result'] == 'OK') {
          return lockValue;
        }
      }

      return null;
    } catch (e) {
      // Log error but don't block booking if Redis is unavailable
      SentryLogger.warning(
        'Failed to acquire slot lock: $e',
        context: 'SlotLock',
      );
      // Return a value to allow booking to proceed
      // The database transaction will still provide ACID guarantees
      return 'fallback-${DateTime.now().millisecondsSinceEpoch}';
    }
  }

  /// Release a slot lock
  ///
  /// Uses Lua script for atomic check-and-delete to ensure
  /// only the lock owner can release the lock.
  static Future<void> releaseLock(
    String consultantProfileId,
    DateTime slotStartTime,
    String lockValue,
  ) async {
    if (!isConfigured) return;
    if (lockValue.startsWith('no-redis-')) return;
    if (lockValue.startsWith('fallback-')) return;

    final lockKey = _generateLockKey(consultantProfileId, slotStartTime);

    try {
      // Use Upstash EVAL to run Lua script for atomic check-and-delete
      // Script: if redis.call("get", KEYS[1]) == ARGV[1]
      //         then return redis.call("del", KEYS[1]) else return 0 end
      const luaScript =
          'if redis.call("get", KEYS[1]) == ARGV[1] '
          'then return redis.call("del", KEYS[1]) else return 0 end';
      final encodedScript = Uri.encodeComponent(luaScript);
      final url = '$_upstashUrl/eval/$encodedScript/1/$lockKey/$lockValue';

      await http.post(
        Uri.parse(url),
        headers: {'Authorization': 'Bearer $_upstashToken'},
      ).timeout(const Duration(seconds: 5));
    } catch (e) {
      // Log but don't throw - lock will expire automatically
      SentryLogger.warning(
        'Failed to release slot lock: $e',
        context: 'SlotLock',
      );
    }
  }

  /// Acquire locks for multiple slots
  ///
  /// Returns a map of slot start times to lock values.
  /// If any lock fails, releases all acquired locks and returns null.
  static Future<Map<DateTime, String>?> acquireMultipleSlotLocks(
    String consultantProfileId,
    List<DateTime> slotStartTimes,
  ) async {
    final locks = <DateTime, String>{};

    for (final slotStart in slotStartTimes) {
      final lockValue = await acquireSlotLock(consultantProfileId, slotStart);
      if (lockValue == null) {
        // Failed to acquire lock - release all previously acquired locks
        for (final entry in locks.entries) {
          await releaseLock(consultantProfileId, entry.key, entry.value);
        }
        return null;
      }
      locks[slotStart] = lockValue;
    }

    return locks;
  }

  /// Release multiple slot locks
  static Future<void> releaseMultipleLocks(
    String consultantProfileId,
    Map<DateTime, String> locks,
  ) async {
    for (final entry in locks.entries) {
      await releaseLock(consultantProfileId, entry.key, entry.value);
    }
  }
}
