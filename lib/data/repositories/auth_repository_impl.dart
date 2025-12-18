import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../core/errors/exceptions.dart';
import '../../core/errors/failures.dart';
import '../../core/network/network_info.dart';
import '../../domain/entities/user.dart';
import '../../domain/repositories/auth_repository.dart';
import '../datasources/local/auth_local_source.dart';
import '../datasources/remote/auth_remote_source.dart';

part 'auth_repository_impl.g.dart';

/// Provider for AuthRepository
@riverpod
AuthRepository authRepository(Ref ref) {
  return AuthRepositoryImpl(
    remoteSource: ref.watch(authRemoteSourceProvider),
    localSource: ref.watch(authLocalSourceProvider),
    networkInfo: ref.watch(networkInfoProvider),
  );
}

/// Implementation of AuthRepository
class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteSource remoteSource;
  final AuthLocalSource localSource;
  final NetworkInfo networkInfo;

  AuthRepositoryImpl({
    required this.remoteSource,
    required this.localSource,
    required this.networkInfo,
  });

  @override
  Future<Result<User>> signInWithEmail({
    required String email,
    required String password,
  }) async {
    if (!await networkInfo.isConnected) {
      return const Left(Failure.network());
    }

    try {
      final userModel = await remoteSource.signInWithEmail(email, password);
      await localSource.saveUserId(userModel.id);
      return Right(userModel.toEntity());
    } on AuthException catch (e) {
      return Left(Failure.auth(message: e.message));
    } on ServerException catch (e) {
      return Left(Failure.server(message: e.message, statusCode: e.statusCode));
    } catch (e) {
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  @override
  Future<Result<User>> signUpWithEmail({
    required String email,
    required String password,
    String? name,
  }) async {
    if (!await networkInfo.isConnected) {
      return const Left(Failure.network());
    }

    try {
      final userModel =
          await remoteSource.signUpWithEmail(email, password, name);
      await localSource.saveUserId(userModel.id);
      return Right(userModel.toEntity());
    } on AuthException catch (e) {
      return Left(Failure.auth(message: e.message));
    } on ServerException catch (e) {
      return Left(Failure.server(message: e.message, statusCode: e.statusCode));
    } catch (e) {
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  @override
  Future<Result<User>> signInWithGoogle() async {
    if (!await networkInfo.isConnected) {
      return const Left(Failure.network());
    }

    try {
      final userModel = await remoteSource.signInWithGoogle();
      await localSource.saveUserId(userModel.id);
      return Right(userModel.toEntity());
    } on AuthException catch (e) {
      return Left(Failure.auth(message: e.message));
    } catch (e) {
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  @override
  Future<Result<User>> signInWithGitHub() async {
    if (!await networkInfo.isConnected) {
      return const Left(Failure.network());
    }

    try {
      final userModel = await remoteSource.signInWithGitHub();
      await localSource.saveUserId(userModel.id);
      return Right(userModel.toEntity());
    } on AuthException catch (e) {
      return Left(Failure.auth(message: e.message));
    } catch (e) {
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  @override
  Future<Result<void>> signOut() async {
    try {
      await remoteSource.signOut();
      await localSource.clearAll();
      return const Right(null);
    } catch (e) {
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  @override
  Future<Result<User?>> getCurrentUser() async {
    try {
      final userModel = await remoteSource.getCurrentUser();
      if (userModel == null) return const Right(null);
      return Right(userModel.toEntity());
    } on AuthException catch (e) {
      return Left(Failure.auth(message: e.message));
    } catch (e) {
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  @override
  Future<Result<void>> sendPasswordResetEmail(String email) async {
    if (!await networkInfo.isConnected) {
      return const Left(Failure.network());
    }

    try {
      await remoteSource.sendPasswordResetEmail(email);
      return const Right(null);
    } on AuthException catch (e) {
      return Left(Failure.auth(message: e.message));
    } catch (e) {
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  @override
  Future<Result<void>> resetPassword({
    required String token,
    required String newPassword,
  }) async {
    // Note: Better Auth handles this through the web flow
    // This method may not be directly callable from the app
    return const Left(
      Failure.auth(message: 'Use the password reset link from your email'),
    );
  }

  @override
  Future<Result<User>> updateProfile({
    String? name,
    String? phone,
    String? timezone,
    String? image,
  }) async {
    if (!await networkInfo.isConnected) {
      return const Left(Failure.network());
    }

    try {
      final data = <String, dynamic>{};
      if (name != null) data['name'] = name;
      if (phone != null) data['phone'] = phone;
      if (timezone != null) data['timezone'] = timezone;
      if (image != null) data['image'] = image;

      final userModel = await remoteSource.updateProfile(data);
      return Right(userModel.toEntity());
    } on AuthException catch (e) {
      return Left(Failure.auth(message: e.message));
    } catch (e) {
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  @override
  Stream<User?> get authStateChanges {
    return remoteSource.authStateChanges.map((model) => model?.toEntity());
  }
}
