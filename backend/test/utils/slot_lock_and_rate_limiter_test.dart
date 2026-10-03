import 'dart:convert';
import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/rate_limiter.dart';
import 'package:backend/utils/slot_lock.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:http/http.dart' as http;
import 'package:mocktail/mocktail.dart';
import 'package:postgres/postgres.dart' as pg;
import 'package:test/test.dart';

import '../../routes/_middleware.dart' as root_middleware;

class _MockHttpClient extends Mock implements http.Client {}

class _MockRequestContext extends Mock implements RequestContext {}

class _MockRequest extends Mock implements Request {}

void main() {
  setUpAll(() {
    registerFallbackValue(Uri.parse('https://example.com'));
  });

  tearDown(() {
    SlotLock.environmentOverride = null;
    SlotLock.httpClientOverride = null;
    root_middleware.middlewareEnvironmentOverride = null;
    root_middleware.clearMiddlewareState();
  });

  group('SlotLock', () {
    test(
        'generateLockKey formats key as slot:lock:consultantProfileId:slotStartIso:slotEndIso',
        () {
      final start = DateTime.utc(2026, 10, 15, 14, 0);
      final end = DateTime.utc(2026, 10, 15, 14, 30);

      final keyWithExplicitEnd = SlotLock.generateLockKey(
        'consultant-42',
        start,
        end,
      );
      expect(
        keyWithExplicitEnd,
        equals(
          'slot:lock:consultant-42:2026-10-15T14:00:00.000Z:2026-10-15T14:30:00.000Z',
        ),
      );

      final keyWithDefaultEnd = SlotLock.generateLockKey(
        'consultant-42',
        start,
      );
      expect(
        keyWithDefaultEnd,
        equals(
          'slot:lock:consultant-42:2026-10-15T14:00:00.000Z:2026-10-15T15:00:00.000Z',
        ),
      );
    });

    test('fails closed (returns null) in production when Redis is unconfigured',
        () async {
      SlotLock.environmentOverride = {
        'DART_ENV': 'production',
      };

      final lock = await SlotLock.acquireSlotLock(
        'consultant-1',
        DateTime.utc(2026, 10, 15, 10, 0),
      );

      expect(lock, isNull);
    });

    test('returns dev fallback token in non-production when Redis is unconfigured',
        () async {
      SlotLock.environmentOverride = {
        'DART_ENV': 'development',
      };

      final lock = await SlotLock.acquireSlotLock(
        'consultant-1',
        DateTime.utc(2026, 10, 15, 10, 0),
      );

      expect(lock, isNotNull);
      expect(lock, startsWith('no-redis-'));
    });

    test('acquires lock when Upstash returns OK and returns null when already held',
        () async {
      final mockClient = _MockHttpClient();
      SlotLock.environmentOverride = {
        'DART_ENV': 'production',
        'UPSTASH_REDIS_REST_URL': 'https://redis.upstash.io',
        'UPSTASH_REDIS_REST_TOKEN': 'secret-token',
      };
      SlotLock.httpClientOverride = mockClient;

      when(
        () => mockClient.post(
          any(),
          headers: any(named: 'headers'),
        ),
      ).thenAnswer(
        (_) async => http.Response(jsonEncode({'result': 'OK'}), 200),
      );

      final acquired = await SlotLock.acquireSlotLock(
        'consultant-1',
        DateTime.utc(2026, 10, 15, 10, 0),
      );
      expect(acquired, isNotNull);

      // Simulate contention: second caller receives {"result": null}
      when(
        () => mockClient.post(
          any(),
          headers: any(named: 'headers'),
        ),
      ).thenAnswer(
        (_) async => http.Response(jsonEncode({'result': null}), 200),
      );

      final contended = await SlotLock.acquireSlotLock(
        'consultant-1',
        DateTime.utc(2026, 10, 15, 10, 0),
      );
      expect(contended, isNull);
    });

    test('fails closed (returns null) when Upstash request throws or errors',
        () async {
      final mockClient = _MockHttpClient();
      SlotLock.environmentOverride = {
        'DART_ENV': 'production',
        'UPSTASH_REDIS_REST_URL': 'https://redis.upstash.io',
        'UPSTASH_REDIS_REST_TOKEN': 'secret-token',
      };
      SlotLock.httpClientOverride = mockClient;

      when(
        () => mockClient.post(
          any(),
          headers: any(named: 'headers'),
        ),
      ).thenThrow(const SocketException('Upstash connection reset'));

      final lock = await SlotLock.acquireSlotLock(
        'consultant-1',
        DateTime.utc(2026, 10, 15, 10, 0),
      );
      expect(lock, isNull);
    });
  });

  group('RateLimiter', () {
    test('enforces sliding-window limit and computes Retry-After', () {
      final limiter = RateLimiter(
        maxRequests: 3,
        window: const Duration(seconds: 60),
      );
      final t0 = DateTime.utc(2026, 10, 15, 12, 0, 0);

      expect(limiter.check('ip-1', now: t0).allowed, isTrue);
      expect(
        limiter.check('ip-1', now: t0.add(const Duration(seconds: 10))).allowed,
        isTrue,
      );
      final third = limiter.check(
        'ip-1',
        now: t0.add(const Duration(seconds: 20)),
      );
      expect(third.allowed, isTrue);
      expect(third.remaining, equals(0));

      final fourth = limiter.check(
        'ip-1',
        now: t0.add(const Duration(seconds: 25)),
      );
      expect(fourth.allowed, isFalse);
      expect(fourth.retryAfterSeconds, equals(35));

      // After 61 seconds from t0, the first request slides out of the window
      final afterWindow = limiter.check(
        'ip-1',
        now: t0.add(const Duration(seconds: 61)),
      );
      expect(afterWindow.allowed, isTrue);
    });

    test('prunes expired keys and enforces maxTrackedKeys memory bound', () {
      final limiter = RateLimiter(
        maxRequests: 5,
        window: const Duration(seconds: 30),
        maxTrackedKeys: 3,
        pruneInterval: const Duration(seconds: 30),
      );
      final t0 = DateTime.utc(2026, 10, 15, 12, 0, 0);

      limiter.check('ip-1', now: t0);
      limiter.check('ip-2', now: t0);
      limiter.check('ip-3', now: t0);
      limiter.check('ip-4', now: t0);

      // Capped at maxTrackedKeys (3)
      expect(limiter.trackedKeyCount, equals(3));

      // Advance past window and prune
      limiter.prune(t0.add(const Duration(seconds: 31)));
      expect(limiter.trackedKeyCount, equals(0));
    });

    test('falls back to maxRequests when maxRequestsOverride is non-positive',
        () {
      final limiter = RateLimiter(
        maxRequests: 2,
        window: const Duration(seconds: 60),
      );
      final t0 = DateTime.utc(2026, 10, 15, 12, 0, 0);

      final r1 = limiter.check('ip-override', now: t0, maxRequestsOverride: 0);
      expect(r1.allowed, isTrue);
      expect(r1.limit, equals(2));

      final r2 = limiter.check('ip-override', now: t0, maxRequestsOverride: -5);
      expect(r2.allowed, isTrue);
      expect(r2.limit, equals(2));

      final r3 = limiter.check('ip-override', now: t0, maxRequestsOverride: 0);
      expect(r3.allowed, isFalse);
    });

    test(
        'extractClientIp ignores forwarding headers unless trusted proxy is configured and counts hops from right',
        () {
      final context = _MockRequestContext();
      final request = _MockRequest();
      when(() => context.request).thenReturn(request);
      when(() => request.headers).thenReturn({
        'x-forwarded-for': '198.51.100.99, 203.0.113.10',
        'cf-connecting-ip': '198.51.100.88',
      });

      // Without TRUST_PROXY / TRUSTED_PROXY_HOPS, headers are not trusted
      expect(
        RateLimiter.extractClientIp(context, environment: const {}),
        equals('unknown'),
      );

      // With 1 trusted proxy hop, selects rightmost XFF entry (203.0.113.10),
      // ignoring client-prepended spoofed entry (198.51.100.99)
      expect(
        RateLimiter.extractClientIp(
          context,
          environment: const {'TRUST_PROXY': 'true'},
        ),
        equals('203.0.113.10'),
      );

      // With 2 trusted proxy hops, selects 2nd entry from right
      expect(
        RateLimiter.extractClientIp(
          context,
          environment: const {'TRUSTED_PROXY_HOPS': '2'},
        ),
        equals('198.51.100.99'),
      );
    });
  });

  group('Root middleware rate limiting, health bypass, and maintenance mode',
      () {
    RequestContext buildContext({
      required String path,
      HttpMethod method = HttpMethod.get,
      Map<String, String> headers = const {'x-forwarded-for': '203.0.113.10'},
      RateLimiter? limiter,
    }) {
      final context = _MockRequestContext();
      final request = _MockRequest();
      when(() => context.request).thenReturn(request);
      when(() => request.method).thenReturn(method);
      when(() => request.headers).thenReturn(headers);
      when(() => request.uri).thenReturn(Uri.parse('http://localhost:8080$path'));
      if (limiter != null) {
        when(() => context.read<RateLimiter>()).thenReturn(limiter);
      } else {
        when(() => context.read<RateLimiter>())
            .thenThrow(StateError('No RateLimiter in context'));
      }
      when(() => context.read<DatabaseClient>())
          .thenThrow(StateError('No DatabaseClient in context'));
      return context;
    }

    test('returns 429 Too Many Requests with Retry-After when limit exceeded',
        () async {
      root_middleware.middlewareEnvironmentOverride = {
        'TRUST_PROXY': 'true',
      };
      final limiter = RateLimiter(
        maxRequests: 2,
        window: const Duration(seconds: 60),
      );
      final wrapped = root_middleware.middleware(
        (_) async => Response.json(body: {'ok': true}),
      );

      final ctx1 = buildContext(path: '/api/consultants', limiter: limiter);
      final ctx2 = buildContext(path: '/api/consultants', limiter: limiter);
      final ctx3 = buildContext(path: '/api/consultants', limiter: limiter);

      expect((await wrapped(ctx1)).statusCode, equals(HttpStatus.ok));
      expect((await wrapped(ctx2)).statusCode, equals(HttpStatus.ok));

      final blocked = await wrapped(ctx3);
      expect(blocked.statusCode, equals(HttpStatus.tooManyRequests));
      expect(blocked.headers['Retry-After'], isNotNull);

      // /api/health must still succeed even when the client IP is rate-limited
      final healthCtx = buildContext(path: '/api/health', limiter: limiter);
      final healthResp = await wrapped(healthCtx);
      expect(healthResp.statusCode, equals(HttpStatus.ok));
    });

    test('returns 503 Service Unavailable during OFFLINE maintenance except /api/health',
        () async {
      root_middleware.middlewareEnvironmentOverride = {
        'MAINTENANCE_MODE': 'OFFLINE',
      };
      final wrapped = root_middleware.middleware(
        (_) async => Response.json(body: {'ok': true}),
      );

      final apiResp = await wrapped(buildContext(path: '/api/consultants'));
      expect(apiResp.statusCode, equals(HttpStatus.serviceUnavailable));

      final healthResp = await wrapped(buildContext(path: '/api/health'));
      expect(healthResp.statusCode, equals(HttpStatus.ok));
    });
  });

  group('DatabaseClient.buildPoolSettings', () {
    test('defaults maxConnectionCount to 8 and configures timeouts', () {
      final settings = DatabaseClient.buildPoolSettings(
        sslMode: pg.SslMode.require,
        environment: const {},
      );

      expect(settings.maxConnectionCount, equals(8));
      expect(settings.connectTimeout, equals(const Duration(seconds: 15)));
      expect(settings.queryTimeout, equals(const Duration(seconds: 30)));
    });

    test('respects DB_POOL_MAX_CONNECTIONS and timeout environment variables',
        () {
      final settings = DatabaseClient.buildPoolSettings(
        sslMode: pg.SslMode.disable,
        environment: const {
          'DB_POOL_MAX_CONNECTIONS': '12',
          'DB_CONNECT_TIMEOUT_SECONDS': '10',
          'DB_QUERY_TIMEOUT_SECONDS': '20',
        },
      );

      expect(settings.maxConnectionCount, equals(12));
      expect(settings.connectTimeout, equals(const Duration(seconds: 10)));
      expect(settings.queryTimeout, equals(const Duration(seconds: 20)));
    });
  });
}
