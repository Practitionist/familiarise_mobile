import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:familiarise_mobile/core/constants/enums.dart';
import 'package:familiarise_mobile/core/constants/storage_keys.dart';
import 'package:familiarise_mobile/core/extensions/string_extensions.dart';
import 'package:familiarise_mobile/data/datasources/remote/auth_remote_source.dart';
import 'package:familiarise_mobile/data/datasources/remote/auth_remote_source_mixin.dart';
import 'package:familiarise_mobile/data/models/user_model.dart';
import 'package:familiarise_mobile/data/repositories/auth_repository_impl.dart';
import 'package:familiarise_mobile/domain/entities/user.dart';
import 'package:familiarise_mobile/domain/repositories/auth_repository.dart';
import 'package:familiarise_mobile/features/auth/screens/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shared_preferences/shared_preferences.dart';

class _MockAuthRepository extends Mock implements AuthRepository {}

class _MockDio extends Mock implements Dio {}

class _TestAuthRemoteSource
    with AuthRemoteSourceMixin
    implements AuthRemoteSource {
  _TestAuthRemoteSource({
    required this.dio,
  });

  @override
  final Dio dio;

  String? token = 'test-bearer-token';
  bool credentialsCleared = false;
  bool googleSignedOut = false;

  @override
  String get baseUrl => 'http://localhost:8080';

  @override
  final StreamController<UserModel?> authStateController =
      StreamController<UserModel?>.broadcast();

  @override
  Future<String?> getAuthToken() async => token;

  @override
  Future<void> saveAuthCredentials(String newToken, UserModel user) async {
    token = newToken;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(StorageKeys.authUser, jsonEncode(user.toJson()));
  }

  @override
  Future<void> clearAuthCredentials() async {
    token = null;
    credentialsCleared = true;
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(StorageKeys.authUser);
  }

  @override
  Future<void> signOutGoogleSdk() async {
    googleSignedOut = true;
  }

  @override
  Future<UserModel> signInWithGoogle() => throw UnimplementedError();

  @override
  Future<UserModel> signInWithGitHub() => throw UnimplementedError();
}

void main() {
  late _MockAuthRepository mockRepository;

  const testUser = User(
    id: 'user-123',
    email: 'consultant@acme.consulting',
    name: 'Test User',
    role: UserRole.consultee,
    onboardingCompleted: true,
  );

  setUp(() {
    SharedPreferences.setMockInitialValues({});
    mockRepository = _MockAuthRepository();
    when(() => mockRepository.authStateChanges)
        .thenAnswer((_) => const Stream.empty());
    when(() => mockRepository.getCurrentUser())
        .thenAnswer((_) async => const Right(null));
    when(
      () => mockRepository.signInWithEmail(
        email: any(named: 'email'),
        password: any(named: 'password'),
      ),
    ).thenAnswer((_) async => const Right(testUser));
  });

  Widget buildTestWidget() {
    return ProviderScope(
      overrides: [
        authRepositoryProvider.overrideWithValue(mockRepository),
      ],
      child: const MaterialApp(
        home: SignInScreen(),
      ),
    );
  }

  group('SignInScreen Email TLD Validation (Issue #124)', () {
    for (final validEmail in const [
      'someone@acme.online',
      'someone@acme.agency',
      'someone@acme.consulting',
      'docker.demo@test.local',
      'user.name+tag@domain.co.uk',
      'user@example.com',
    ]) {
      testWidgets('accepts valid email with TLD: $validEmail', (tester) async {
        await tester.pumpWidget(buildTestWidget());
        await tester.pumpAndSettle();

        final textFields = find.byType(TextFormField);
        expect(textFields, findsNWidgets(2));

        await tester.enterText(textFields.first, validEmail);
        await tester.enterText(textFields.last, 'Password123!');

        final signInButton = find.widgetWithText(ElevatedButton, 'Sign In');
        await tester.ensureVisible(signInButton);
        await tester.tap(signInButton);
        await tester.pumpAndSettle();

        expect(find.text('Please enter a valid email'), findsNothing);
        expect(find.text('Please enter your email'), findsNothing);
        verify(
          () => mockRepository.signInWithEmail(
            email: validEmail,
            password: 'Password123!',
          ),
        ).called(1);
      });
    }

    testWidgets('rejects empty email with required error', (tester) async {
      await tester.pumpWidget(buildTestWidget());
      await tester.pumpAndSettle();

      final textFields = find.byType(TextFormField);
      await tester.enterText(textFields.last, 'Password123!');

      final signInButton = find.widgetWithText(ElevatedButton, 'Sign In');
      await tester.ensureVisible(signInButton);
      await tester.tap(signInButton);
      await tester.pumpAndSettle();

      expect(find.text('Please enter your email'), findsOneWidget);
      verifyNever(
        () => mockRepository.signInWithEmail(
          email: any(named: 'email'),
          password: any(named: 'password'),
        ),
      );
    });

    for (final invalidEmail in const [
      'not-an-email',
      'missing-tld@domain',
      'single-char-tld@domain.c',
      '@missing-local.com',
    ]) {
      testWidgets('rejects malformed email: $invalidEmail', (tester) async {
        await tester.pumpWidget(buildTestWidget());
        await tester.pumpAndSettle();

        final textFields = find.byType(TextFormField);
        await tester.enterText(textFields.first, invalidEmail);
        await tester.enterText(textFields.last, 'Password123!');

        final signInButton = find.widgetWithText(ElevatedButton, 'Sign In');
        await tester.ensureVisible(signInButton);
        await tester.tap(signInButton);
        await tester.pumpAndSettle();

        expect(find.text('Please enter a valid email'), findsOneWidget);
        verifyNever(
          () => mockRepository.signInWithEmail(
            email: any(named: 'email'),
            password: any(named: 'password'),
          ),
        );
      });
    }
  });

  group('StringX.isValidEmail TLD support', () {
    test('accepts modern multi-char TLDs', () {
      expect('user@acme.online'.isValidEmail, isTrue);
      expect('user@acme.agency'.isValidEmail, isTrue);
      expect('user@acme.consulting'.isValidEmail, isTrue);
      expect('docker.demo@test.local'.isValidEmail, isTrue);
      expect('  user@acme.consulting  '.isValidEmail, isTrue);
    });

    test('rejects invalid email formats', () {
      expect(''.isValidEmail, isFalse);
      expect('invalid'.isValidEmail, isFalse);
      expect('user@domain.c'.isValidEmail, isFalse);
      expect('@domain.com'.isValidEmail, isFalse);
    });
  });

  group('AuthRemoteSourceMixin Dio Session & Logout Contract (Issue #59)', () {
    late _MockDio mockDio;
    late _TestAuthRemoteSource remoteSource;

    setUp(() {
      mockDio = _MockDio();
      remoteSource = _TestAuthRemoteSource(dio: mockDio);
    });

    tearDown(() {
      remoteSource.dispose();
    });

    test(
        'signOut calls POST /api/auth/logout before clearing local credentials',
        () async {
      when(
        () => mockDio.post<dynamic>(
          'http://localhost:8080/api/auth/logout',
          options: any(named: 'options'),
        ),
      ).thenAnswer(
        (_) async => Response<dynamic>(
          requestOptions: RequestOptions(path: '/api/auth/logout'),
          statusCode: 200,
          data: {'success': true},
        ),
      );

      final emittedStates = <UserModel?>[];
      final sub = remoteSource.authStateChanges.listen(emittedStates.add);

      await remoteSource.signOut();
      await Future<void>.delayed(Duration.zero);

      verify(
        () => mockDio.post<dynamic>(
          'http://localhost:8080/api/auth/logout',
          options: any(named: 'options'),
        ),
      ).called(1);
      expect(remoteSource.credentialsCleared, isTrue);
      expect(remoteSource.googleSignedOut, isTrue);
      expect(emittedStates, contains(null));
      await sub.cancel();
    });

    test(
        'getCurrentSession clears credentials and returns null on 401 DioException',
        () async {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(
        StorageKeys.authUser,
        jsonEncode({
          'id': 'stale-user',
          'email': 'stale@acme.online',
          'name': 'Stale User',
          'role': 'CONSULTEE',
          'onboardingCompleted': true,
        }),
      );

      when(
        () => mockDio.get<dynamic>(
          'http://localhost:8080/api/auth/session',
          options: any(named: 'options'),
        ),
      ).thenThrow(
        DioException(
          requestOptions: RequestOptions(path: '/api/auth/session'),
          response: Response<dynamic>(
            requestOptions: RequestOptions(path: '/api/auth/session'),
            statusCode: 401,
            data: {'error': 'Unauthorized'},
          ),
          type: DioExceptionType.badResponse,
        ),
      );

      final user = await remoteSource.getCurrentSession();

      expect(user, isNull);
      expect(remoteSource.credentialsCleared, isTrue);
      expect(prefs.getString(StorageKeys.authUser), isNull);
    });
  });
}
