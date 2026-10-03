import 'dart:convert';
import 'dart:io';

import 'package:backend/utils/sentry_logger.dart';
import 'package:http/http.dart' as http;

/// Distributed locking utility for slot booking using Upstash Redis.
///
/// Uses the same Redis instance and 30-minute slot-atom key format as the web
/// app (`familiarise_web/utils/appointmentlock.ts`) to ensure consistent
/// cross-platform locking under high concurrency.
///
/// Lock key format: `slot-booking:$consultantProfileId:$slotAtomStartIso`
class SlotLock {
  /// Lock TTL in milliseconds (60 seconds - matches web app)
  static const int _lockTtlMs = 60000;

  /// Canonical 30-minute slot atom duration matching `SCHEDULING_INTERVAL_MS` in web.
  static const Duration slotAtomDuration = Duration(minutes: 30);

  /// Default slot duration when `slotEndTime` is not explicitly provided.
  static const Duration defaultSlotDuration = Duration(minutes: 30);

  /// Optional environment map override for unit testing.
  static Map<String, String>? environmentOverride;

  /// Optional HTTP client override for unit testing.
  static http.Client? httpClientOverride;

  static Map<String, String> get _env =>
      environmentOverride ?? Platform.environment;

  /// Whether the backend is running in production mode.
  ///
  /// Defaults to `true` (fail-closed) unless `DART_ENV` is explicitly set to
  /// `development`, `dev`, or `test`.
  static bool get isProduction {
    final env = (_env['DART_ENV'] ?? '').trim().toLowerCase();
    return env != 'development' && env != 'dev' && env != 'test';
  }

  /// Get Upstash Redis REST URL from environment
  static String get _upstashUrl => _env['UPSTASH_REDIS_REST_URL'] ?? '';

  /// Get Upstash Redis token from environment
  static String get _upstashToken => _env['UPSTASH_REDIS_REST_TOKEN'] ?? '';

  /// Check if Redis is configured
  static bool get isConfigured =>
      _upstashUrl.isNotEmpty && _upstashToken.isNotEmpty;

  /// Compute the 30-minute slot atom start timestamps covering
  /// `[slotStartTime, slotEndTime)`.
  ///
  /// Mirrors `slotAtomStarts` in `familiarise_web/utils/appointmentlock.ts`.
  static List<DateTime> slotAtomStarts(
    DateTime slotStartTime, [
    DateTime? slotEndTime,
  ]) {
    final startUtc = slotStartTime.toUtc();
    final endUtc = (slotEndTime ?? startUtc.add(defaultSlotDuration)).toUtc();
    final atomMs = slotAtomDuration.inMilliseconds;
    final flooredMs = (startUtc.millisecondsSinceEpoch ~/ atomMs) * atomMs;
    final endMs = endUtc.millisecondsSinceEpoch;
    if (endMs <= flooredMs) {
      return <DateTime>[
        DateTime.fromMillisecondsSinceEpoch(flooredMs, isUtc: true),
      ];
    }
    final atoms = <DateTime>[];
    for (var t = flooredMs; t < endMs; t += atomMs) {
      atoms.add(DateTime.fromMillisecondsSinceEpoch(t, isUtc: true));
    }
    return atoms;
  }

  /// Generate a consistent cross-platform lock key for a 30-minute slot atom.
  ///
  /// Matches `familiarise_web/utils/appointmentlock.ts`:
  /// `slot-booking:$consultantProfileId:$slotStartIso`
  static String generateLockKey(
    String consultantProfileId,
    DateTime slotStartTime, [
    DateTime? slotEndTime,
  ]) {
    final atoms = slotAtomStarts(slotStartTime, slotEndTime);
    final slotStartIso = atoms.first.toIso8601String();
    return 'slot-booking:$consultantProfileId:$slotStartIso';
  }

  static Future<bool> _acquireSingleAtomKey(
    String lockKey,
    String lockValue,
  ) async {
    final encodedKey = Uri.encodeComponent(lockKey);
    final url = '$_upstashUrl/set/$encodedKey/$lockValue/nx/px/$_lockTtlMs';
    final client = httpClientOverride;
    final responseFuture = client != null
        ? client.post(
            Uri.parse(url),
            headers: {'Authorization': 'Bearer $_upstashToken'},
          )
        : http.post(
            Uri.parse(url),
            headers: {'Authorization': 'Bearer $_upstashToken'},
          );
    final response = await responseFuture.timeout(const Duration(seconds: 5));

    if (response.statusCode == 200) {
      final result = jsonDecode(response.body) as Map<String, dynamic>;
      return result['result'] == 'OK';
    }
    return false;
  }

  static Future<void> _releaseSingleAtomKey(
    String lockKey,
    String lockValue,
  ) async {
    const luaScript = 'if redis.call("get", KEYS[1]) == ARGV[1] '
        'then return redis.call("del", KEYS[1]) else return 0 end';
    final encodedScript = Uri.encodeComponent(luaScript);
    final encodedKey = Uri.encodeComponent(lockKey);
    final url = '$_upstashUrl/eval/$encodedScript/1/$encodedKey/$lockValue';

    final client = httpClientOverride;
    final responseFuture = client != null
        ? client.post(
            Uri.parse(url),
            headers: {'Authorization': 'Bearer $_upstashToken'},
          )
        : http.post(
            Uri.parse(url),
            headers: {'Authorization': 'Bearer $_upstashToken'},
          );
    await responseFuture.timeout(const Duration(seconds: 5));
  }

  /// Acquire distributed lock(s) for all 30-minute atoms in `[slotStartTime, slotEndTime)`.
  ///
  /// Returns the lock token if acquired successfully, or `null` if any atom is
  /// already held or if Redis is unavailable/unconfigured in production
  /// (fail-closed).
  ///
  /// Uses SET NX PX pattern for atomic lock acquisition and rolls back any
  /// partially acquired atoms on contention.
  static Future<String?> acquireSlotLock(
    String consultantProfileId,
    DateTime slotStartTime, [
    DateTime? slotEndTime,
  ]) async {
    if (!isConfigured) {
      if (isProduction) {
        await SentryLogger.warning(
          'Upstash Redis is not configured in production; '
          'failing closed on slot lock acquisition.',
          context: 'SlotLock',
        );
        return null;
      }
      // Non-production local development fallback when Redis is not configured
      return 'no-redis-${DateTime.now().millisecondsSinceEpoch}';
    }

    final atoms = slotAtomStarts(slotStartTime, slotEndTime);
    final lockValue = DateTime.now().millisecondsSinceEpoch.toString();
    final acquiredKeys = <String>[];

    try {
      for (final atom in atoms) {
        final key =
            'slot-booking:$consultantProfileId:${atom.toIso8601String()}';
        final ok = await _acquireSingleAtomKey(key, lockValue);
        if (!ok) {
          for (final acquiredKey in acquiredKeys.reversed) {
            await _releaseSingleAtomKey(acquiredKey, lockValue);
          }
          return null;
        }
        acquiredKeys.add(key);
      }
      return lockValue;
    } catch (e) {
      for (final acquiredKey in acquiredKeys.reversed) {
        try {
          await _releaseSingleAtomKey(acquiredKey, lockValue);
        } catch (_) {}
      }
      // Fail closed when Redis errors or times out so concurrent requests
      // cannot bypass distributed slot locking.
      await SentryLogger.warning(
        'Failed to acquire slot lock (failing closed): $e',
        context: 'SlotLock',
      );
      return null;
    }
  }

  /// Release a slot lock across all 30-minute atoms in `[slotStartTime, slotEndTime)`.
  ///
  /// Uses Lua script for atomic check-and-delete to ensure
  /// only the lock owner can release the lock.
  static Future<void> releaseLock(
    String consultantProfileId,
    DateTime slotStartTime,
    String lockValue, [
    DateTime? slotEndTime,
  ]) async {
    if (!isConfigured) return;
    if (lockValue.startsWith('no-redis-')) return;

    final atoms = slotAtomStarts(slotStartTime, slotEndTime);

    for (final atom in atoms.reversed) {
      final lockKey =
          'slot-booking:$consultantProfileId:${atom.toIso8601String()}';
      try {
        await _releaseSingleAtomKey(lockKey, lockValue);
      } catch (e) {
        // Log but don't throw - lock will expire automatically
        await SentryLogger.warning(
          'Failed to release slot lock: $e',
          context: 'SlotLock',
        );
      }
    }
  }

  /// Acquire locks for multiple slots.
  ///
  /// Sorts slot times deterministically before acquiring locks to prevent
  /// deadlocks/livelocks across concurrent multi-slot booking requests.
  /// Returns a map of slot start times to lock values.
  /// If any lock fails, releases all acquired locks and returns null.
  static Future<Map<DateTime, String>?> acquireMultipleSlotLocks(
    String consultantProfileId,
    List<DateTime> slotStartTimes, {
    Duration slotDuration = defaultSlotDuration,
  }) async {
    final locks = <DateTime, String>{};
    final sortedSlots = List<DateTime>.from(slotStartTimes)
      ..sort((a, b) => a.compareTo(b));

    for (final slotStart in sortedSlots) {
      final slotEnd = slotStart.toUtc().add(slotDuration);
      final lockValue = await acquireSlotLock(
        consultantProfileId,
        slotStart,
        slotEnd,
      );
      if (lockValue == null) {
        // Failed to acquire lock - release all previously acquired locks
        for (final entry in locks.entries.toList().reversed) {
          await releaseLock(
            consultantProfileId,
            entry.key,
            entry.value,
            entry.key.toUtc().add(slotDuration),
          );
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
    Map<DateTime, String> locks, {
    Duration slotDuration = defaultSlotDuration,
  }) async {
    for (final entry in locks.entries.toList().reversed) {
      await releaseLock(
        consultantProfileId,
        entry.key,
        entry.value,
        entry.key.toUtc().add(slotDuration),
      );
    }
  }
}
