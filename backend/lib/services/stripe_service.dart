import 'dart:convert';
import 'dart:io';

import 'package:crypto/crypto.dart';

/// Service for interacting with Stripe API
///
/// Mirrors the RazorpayService pattern - HTTP-based API client without SDK.
class StripeService {
  static const String _baseUrl = 'https://api.stripe.com/v1';

  final String _secretKey;
  final String? _webhookSecret;
  final HttpClient _httpClient;

  StripeService({
    required String secretKey,
    String? webhookSecret,
  })  : _secretKey = secretKey,
        _webhookSecret = webhookSecret,
        _httpClient = HttpClient();

  /// Create a PaymentIntent for mobile checkout
  ///
  /// Returns the PaymentIntent with client_secret for frontend SDK.
  Future<StripePaymentIntent> createPaymentIntent({
    required int amountInSmallestUnit,
    required String currency,
    Map<String, String>? metadata,
  }) async {
    final uri = Uri.parse('$_baseUrl/payment_intents');

    // Build form-encoded body
    final body = <String, String>{
      'amount': amountInSmallestUnit.toString(),
      'currency': currency.toLowerCase(),
      'automatic_payment_methods[enabled]': 'true',
    };

    // Add metadata fields
    if (metadata != null) {
      for (final entry in metadata.entries) {
        body['metadata[${entry.key}]'] = entry.value;
      }
    }

    final request = await _httpClient.postUrl(uri);

    // Bearer token authentication
    request.headers.set('Authorization', 'Bearer $_secretKey');
    request.headers.contentType =
        ContentType('application', 'x-www-form-urlencoded', charset: 'utf-8');

    // Write form-encoded body
    request.write(_encodeFormData(body));

    final response = await request.close();
    final responseBody = await response.transform(utf8.decoder).join();

    if (response.statusCode == 200) {
      final data = jsonDecode(responseBody) as Map<String, dynamic>;
      return StripePaymentIntent.fromJson(data);
    }

    throw StripeException(
      message: 'Failed to create Stripe PaymentIntent',
      statusCode: response.statusCode,
      responseBody: responseBody,
    );
  }

  /// Verify webhook signature (Stripe-Signature header)
  ///
  /// Stripe signature format: t=timestamp,v1=signature
  /// Message to sign: timestamp.payload
  bool verifyWebhookSignature({
    required String payload,
    required String signature,
  }) {
    if (_webhookSecret == null) {
      throw StripeException(
        message: 'Webhook secret not configured',
      );
    }

    // Parse signature header
    String? timestamp;
    String? expectedSignature;

    final parts = signature.split(',');
    for (final part in parts) {
      final kv = part.split('=');
      if (kv.length == 2) {
        if (kv[0] == 't') {
          timestamp = kv[1];
        } else if (kv[0] == 'v1') {
          expectedSignature = kv[1];
        }
      }
    }

    if (timestamp == null || expectedSignature == null) {
      return false;
    }

    // Verify timestamp is recent (within 5 minutes)
    final eventTime = int.tryParse(timestamp);
    if (eventTime == null) return false;

    final now = DateTime.now().millisecondsSinceEpoch ~/ 1000;
    if ((now - eventTime).abs() > 300) {
      return false; // Reject events older than 5 minutes
    }

    // Compute expected signature
    final signedPayload = '$timestamp.$payload';
    final hmac = Hmac(sha256, utf8.encode(_webhookSecret!));
    final digest = hmac.convert(utf8.encode(signedPayload));
    final computedSignature = digest.toString();

    return computedSignature == expectedSignature;
  }

  /// Fetch PaymentIntent details
  Future<Map<String, dynamic>> getPaymentIntent(String paymentIntentId) async {
    final uri = Uri.parse('$_baseUrl/payment_intents/$paymentIntentId');

    final request = await _httpClient.getUrl(uri);
    request.headers.set('Authorization', 'Bearer $_secretKey');

    final response = await request.close();
    final responseBody = await response.transform(utf8.decoder).join();

    if (response.statusCode == 200) {
      return jsonDecode(responseBody) as Map<String, dynamic>;
    }

    throw StripeException(
      message: 'Failed to fetch PaymentIntent',
      statusCode: response.statusCode,
      responseBody: responseBody,
    );
  }

  /// Cancel a PaymentIntent
  Future<void> cancelPaymentIntent(String paymentIntentId) async {
    final uri = Uri.parse('$_baseUrl/payment_intents/$paymentIntentId/cancel');

    final request = await _httpClient.postUrl(uri);
    request.headers.set('Authorization', 'Bearer $_secretKey');
    request.headers.contentType =
        ContentType('application', 'x-www-form-urlencoded', charset: 'utf-8');

    final response = await request.close();

    if (response.statusCode != 200) {
      final responseBody = await response.transform(utf8.decoder).join();
      throw StripeException(
        message: 'Failed to cancel PaymentIntent',
        statusCode: response.statusCode,
        responseBody: responseBody,
      );
    }
  }

  /// Encode form data for x-www-form-urlencoded
  String _encodeFormData(Map<String, String> data) {
    return data.entries
        .map((e) =>
            '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
        .join('&');
  }

  void dispose() {
    _httpClient.close();
  }
}

/// Stripe PaymentIntent response
class StripePaymentIntent {
  final String id;
  final String clientSecret;
  final int amount;
  final String currency;
  final String status;
  final Map<String, dynamic>? metadata;

  StripePaymentIntent({
    required this.id,
    required this.clientSecret,
    required this.amount,
    required this.currency,
    required this.status,
    this.metadata,
  });

  factory StripePaymentIntent.fromJson(Map<String, dynamic> json) {
    return StripePaymentIntent(
      id: json['id'] as String,
      clientSecret: json['client_secret'] as String,
      amount: json['amount'] as int,
      currency: json['currency'] as String,
      status: json['status'] as String,
      metadata: json['metadata'] as Map<String, dynamic>?,
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'client_secret': clientSecret,
        'amount': amount,
        'currency': currency,
        'status': status,
        'metadata': metadata,
      };
}

/// Stripe API exception
class StripeException implements Exception {
  final String message;
  final int? statusCode;
  final String? responseBody;

  StripeException({
    required this.message,
    this.statusCode,
    this.responseBody,
  });

  @override
  String toString() =>
      'StripeException: $message (status: $statusCode, response: $responseBody)';
}
