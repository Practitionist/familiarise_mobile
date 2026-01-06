import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../core/errors/exceptions.dart';
import '../../core/errors/failures.dart';
import '../../core/network/network_info.dart';
import '../../core/utils/sentry_logger.dart';
import '../../domain/entities/checkout/checkout_entities.dart';
import '../../domain/repositories/checkout_repository.dart';
import '../datasources/remote/checkout_remote_source.dart';

part 'checkout_repository_impl.g.dart';

/// Provider for CheckoutRepository
@riverpod
CheckoutRepository checkoutRepository(Ref ref) {
  return CheckoutRepositoryImpl(
    remoteSource: ref.watch(checkoutRemoteSourceProvider),
    networkInfo: ref.watch(networkInfoProvider),
  );
}

/// Implementation of CheckoutRepository
class CheckoutRepositoryImpl implements CheckoutRepository {
  final CheckoutRemoteSource _remoteSource;
  final NetworkInfo _networkInfo;

  CheckoutRepositoryImpl({
    required CheckoutRemoteSource remoteSource,
    required NetworkInfo networkInfo,
  })  : _remoteSource = remoteSource,
        _networkInfo = networkInfo;

  @override
  Future<Result<CheckoutSession>> createCheckout({
    required String bookingId,
    required String bookingType,
    required PaymentGatewayType gateway,
    String? discountCode,
  }) async {
    if (!await _networkInfo.isConnected) {
      return const Left(Failure.network());
    }

    try {
      final response = await _remoteSource.createCheckout(
        bookingId: bookingId,
        bookingType: bookingType,
        paymentGateway: gateway.value,
        discountCode: discountCode,
      );
      return Right(response.toEntity());
    } on AuthException catch (e) {
      return Left(Failure.auth(message: e.message));
    } on SlotConflictException catch (e) {
      return Left(Failure.slotConflict(
        message: e.message,
        conflictingSlots: e.conflictingSlots,
      ));
    } on ServerException catch (e) {
      return Left(Failure.server(
        message: e.message,
        statusCode: e.statusCode,
        errorCode: e.errorCode,
      ));
    } on NotFoundException catch (e) {
      return Left(Failure.notFound(resource: e.resource));
    } catch (e, stackTrace) {
      SentryLogger.captureException(
        e,
        stackTrace: stackTrace,
        context: 'CheckoutRepository.createCheckout',
      );
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  @override
  Future<Result<CheckoutSession>> createDirectCheckout({
    required String consultantProfileId,
    required String planId,
    required String planType,
    required PaymentGatewayType gateway,
    DateTime? slotStartTime,
    DateTime? slotEndTime,
    String? slotOfAvailabilityId,
    DateTime? schedulingPeriodStart,
    DateTime? schedulingPeriodEnd,
    String? discountCode,
    String? notes,
  }) async {
    if (!await _networkInfo.isConnected) {
      return const Left(Failure.network());
    }

    try {
      final response = await _remoteSource.createDirectCheckout(
        consultantProfileId: consultantProfileId,
        planId: planId,
        appointmentType: planType.toUpperCase(),
        paymentGateway: gateway.value,
        slotStartTimeInUTC: slotStartTime?.toUtc().toIso8601String(),
        slotEndTimeInUTC: slotEndTime?.toUtc().toIso8601String(),
        slotOfAvailabilityWeeklyId: slotOfAvailabilityId,
        schedulingPeriodStartsAt:
            schedulingPeriodStart?.toUtc().toIso8601String(),
        schedulingPeriodEndsAt: schedulingPeriodEnd?.toUtc().toIso8601String(),
        discountCode: discountCode,
        notes: notes,
      );
      return Right(response.toEntity());
    } on AuthException catch (e) {
      return Left(Failure.auth(message: e.message));
    } on SlotConflictException catch (e) {
      return Left(Failure.slotConflict(
        message: e.message,
        conflictingSlots: e.conflictingSlots,
      ));
    } on ServerException catch (e) {
      return Left(Failure.server(
        message: e.message,
        statusCode: e.statusCode,
        errorCode: e.errorCode,
      ));
    } on NotFoundException catch (e) {
      return Left(Failure.notFound(resource: e.resource));
    } catch (e, stackTrace) {
      SentryLogger.captureException(
        e,
        stackTrace: stackTrace,
        context: 'CheckoutRepository.createDirectCheckout',
      );
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  @override
  Future<Result<PaymentVerification>> verifyPayment({
    required String paymentId,
    String? razorpayPaymentId,
    String? razorpaySignature,
  }) async {
    if (!await _networkInfo.isConnected) {
      return const Left(Failure.network());
    }

    try {
      final response = await _remoteSource.verifyPayment(
        paymentId: paymentId,
        razorpayPaymentId: razorpayPaymentId,
        razorpaySignature: razorpaySignature,
      );
      return Right(response.toEntity());
    } on AuthException catch (e) {
      return Left(Failure.auth(message: e.message));
    } on ServerException catch (e) {
      return Left(Failure.server(
        message: e.message,
        statusCode: e.statusCode,
        errorCode: e.errorCode,
      ));
    } catch (e, stackTrace) {
      SentryLogger.captureException(
        e,
        stackTrace: stackTrace,
        context: 'CheckoutRepository.verifyPayment',
      );
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  @override
  Future<Result<DiscountInfo>> validateDiscountCode({
    required String code,
    required String bookingId,
    double? amount,
  }) async {
    if (!await _networkInfo.isConnected) {
      return const Left(Failure.network());
    }

    try {
      final response = await _remoteSource.validateDiscountCode(
        code: code,
        bookingId: bookingId,
        amount: amount,
      );

      final discountInfo = response.toEntity(code);

      if (!discountInfo.isValid) {
        return Left(Failure.validation(errors: {
          'discountCode': [
            discountInfo.errorMessage ?? 'Invalid discount code'
          ],
        }));
      }

      return Right(discountInfo);
    } on ServerException catch (e) {
      return Left(Failure.server(
        message: e.message,
        statusCode: e.statusCode,
        errorCode: e.errorCode,
      ));
    } catch (e, stackTrace) {
      SentryLogger.captureException(
        e,
        stackTrace: stackTrace,
        context: 'CheckoutRepository.validateDiscountCode',
      );
      return Left(Failure.unknown(message: e.toString()));
    }
  }
}
