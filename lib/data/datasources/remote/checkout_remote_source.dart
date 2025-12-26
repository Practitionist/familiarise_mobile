import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/errors/exceptions.dart';
import '../../../core/network/api_endpoints.dart';
import '../../../shared/providers/core_providers.dart';
import '../../models/checkout/checkout_models.dart';

part 'checkout_remote_source.g.dart';

/// Provider for CheckoutRemoteSource
@riverpod
CheckoutRemoteSource checkoutRemoteSource(Ref ref) {
  return CheckoutRemoteSourceImpl(ref.watch(dioProvider));
}

/// Remote data source interface for checkout/payment operations
abstract class CheckoutRemoteSource {
  /// Create a checkout session for an existing booking
  Future<CheckoutResponseModel> createCheckout({
    required String bookingId,
    required String bookingType,
    required String paymentGateway,
    String? discountCode,
  });

  /// Create a direct checkout session (without pre-created booking)
  Future<CheckoutResponseModel> createDirectCheckout({
    required String consultantProfileId,
    required String planId,
    required String appointmentType,
    required String paymentGateway,
    String? slotStartTimeInUTC,
    String? slotEndTimeInUTC,
    String? slotOfAvailabilityWeeklyId,
    String? slotOfAvailabilityCustomId,
    String? schedulingPeriodStartsAt,
    String? schedulingPeriodEndsAt,
    String? discountCode,
    String? notes,
  });

  /// Verify payment after gateway callback
  Future<PaymentVerificationModel> verifyPayment({
    required String paymentId,
    String? razorpayPaymentId,
    String? razorpaySignature,
  });

  /// Validate a discount code
  Future<DiscountValidationModel> validateDiscountCode({
    required String code,
    required String bookingId,
    double? amount,
  });
}

/// Implementation of CheckoutRemoteSource
class CheckoutRemoteSourceImpl implements CheckoutRemoteSource {
  final Dio _dio;

  CheckoutRemoteSourceImpl(this._dio);

  @override
  Future<CheckoutResponseModel> createCheckout({
    required String bookingId,
    required String bookingType,
    required String paymentGateway,
    String? discountCode,
  }) async {
    try {
      final response = await _dio.post(
        ApiEndpoints.checkout,
        data: {
          'bookingId': bookingId,
          'appointmentType': bookingType,
          'paymentGateway': paymentGateway,
          if (discountCode != null) 'discountCode': discountCode,
        },
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        return CheckoutResponseModel.fromJson(
          response.data as Map<String, dynamic>,
        );
      }

      throw ServerException(
        message: 'Failed to create checkout session',
        statusCode: response.statusCode,
      );
    } on DioException catch (e) {
      throw _handleDioError(e, 'Failed to create checkout session');
    }
  }

  @override
  Future<CheckoutResponseModel> createDirectCheckout({
    required String consultantProfileId,
    required String planId,
    required String appointmentType,
    required String paymentGateway,
    String? slotStartTimeInUTC,
    String? slotEndTimeInUTC,
    String? slotOfAvailabilityWeeklyId,
    String? slotOfAvailabilityCustomId,
    String? schedulingPeriodStartsAt,
    String? schedulingPeriodEndsAt,
    String? discountCode,
    String? notes,
  }) async {
    try {
      final data = <String, dynamic>{
        'consultantProfileId': consultantProfileId,
        'planId': planId,
        'appointmentType': appointmentType,
        'paymentGateway': paymentGateway,
      };

      // Add optional fields
      if (slotStartTimeInUTC != null) {
        data['slotStartTimeInUTC'] = slotStartTimeInUTC;
      }
      if (slotEndTimeInUTC != null) {
        data['slotEndTimeInUTC'] = slotEndTimeInUTC;
      }
      if (slotOfAvailabilityWeeklyId != null) {
        data['slotOfAvailabilityWeeklyId'] = slotOfAvailabilityWeeklyId;
      }
      if (slotOfAvailabilityCustomId != null) {
        data['slotOfAvailabilityCustomId'] = slotOfAvailabilityCustomId;
      }
      if (schedulingPeriodStartsAt != null) {
        data['schedulingPeriodStartsAt'] = schedulingPeriodStartsAt;
      }
      if (schedulingPeriodEndsAt != null) {
        data['schedulingPeriodEndsAt'] = schedulingPeriodEndsAt;
      }
      if (discountCode != null) {
        data['discountCode'] = discountCode;
      }
      if (notes != null) {
        data['notes'] = notes;
      }

      final response = await _dio.post(
        ApiEndpoints.checkout,
        data: data,
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        return CheckoutResponseModel.fromJson(
          response.data as Map<String, dynamic>,
        );
      }

      throw ServerException(
        message: 'Failed to create checkout session',
        statusCode: response.statusCode,
      );
    } on DioException catch (e) {
      throw _handleDioError(e, 'Failed to create checkout session');
    }
  }

  @override
  Future<PaymentVerificationModel> verifyPayment({
    required String paymentId,
    String? razorpayPaymentId,
    String? razorpaySignature,
  }) async {
    try {
      final queryParams = <String, dynamic>{
        'payment_intent': paymentId,
      };

      if (razorpayPaymentId != null) {
        queryParams['razorpay_payment_id'] = razorpayPaymentId;
      }
      if (razorpaySignature != null) {
        queryParams['razorpay_signature'] = razorpaySignature;
      }

      final response = await _dio.get(
        ApiEndpoints.checkoutVerify,
        queryParameters: queryParams,
      );

      if (response.statusCode == 200) {
        return PaymentVerificationModel.fromJson(
          response.data as Map<String, dynamic>,
        );
      }

      throw ServerException(
        message: 'Failed to verify payment',
        statusCode: response.statusCode,
      );
    } on DioException catch (e) {
      throw _handleDioError(e, 'Failed to verify payment');
    }
  }

  @override
  Future<DiscountValidationModel> validateDiscountCode({
    required String code,
    required String bookingId,
    double? amount,
  }) async {
    try {
      final response = await _dio.post(
        '${ApiEndpoints.checkout}/validate-discount',
        data: {
          'code': code,
          'bookingId': bookingId,
          if (amount != null) 'amount': amount,
        },
      );

      if (response.statusCode == 200) {
        return DiscountValidationModel.fromJson(
          response.data as Map<String, dynamic>,
        );
      }

      // Return invalid discount on non-200 response
      return DiscountValidationModel(
        valid: false,
        message: 'Invalid discount code',
      );
    } on DioException catch (e) {
      // For discount validation, return invalid instead of throwing
      final message = _extractErrorMessage(e) ?? 'Invalid discount code';
      return DiscountValidationModel(
        valid: false,
        message: message,
      );
    }
  }

  /// Handle Dio errors and convert to AppException
  AppException _handleDioError(DioException e, String defaultMessage) {
    if (e.error is AppException) {
      return e.error as AppException;
    }

    final message = _extractErrorMessage(e) ?? defaultMessage;
    final statusCode = e.response?.statusCode;

    // Check for specific error types
    if (statusCode == 404) {
      return NotFoundException(resource: defaultMessage.replaceAll('Failed to ', ''));
    }

    if (statusCode == 401 || statusCode == 403) {
      return AuthException(message: message);
    }

    return ServerException(
      message: message,
      statusCode: statusCode,
      originalError: e,
    );
  }

  /// Extract error message from DioException response
  String? _extractErrorMessage(DioException e) {
    final data = e.response?.data;
    if (data is Map<String, dynamic>) {
      // Try nested error.message
      final error = data['error'];
      if (error is Map<String, dynamic>) {
        return error['message'] as String?;
      }
      // Try direct message
      return data['message'] as String?;
    }
    return e.message;
  }
}
