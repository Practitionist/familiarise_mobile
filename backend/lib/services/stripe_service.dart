import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:http/http.dart' as http;

/// Service for interacting with Stripe API
///
/// Uses package:http for HTTP requests - no manual lifecycle management needed.
class StripeService {
  static const String _baseUrl = 'https://api.stripe.com/v1';

  final String _secretKey;
  final String? _webhookSecret;

  StripeService({
    required String secretKey,
    String? webhookSecret,
  })  : _secretKey = secretKey,
        _webhookSecret = webhookSecret;

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

    final response = await http.post(
      uri,
      headers: {
        'Authorization': 'Bearer $_secretKey',
        'Content-Type': 'application/x-www-form-urlencoded',
      },
      body: body,
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      return StripePaymentIntent.fromJson(data);
    }

    throw StripeException(
      message: 'Failed to create Stripe PaymentIntent',
      statusCode: response.statusCode,
      responseBody: response.body,
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

    final response = await http.get(
      uri,
      headers: {'Authorization': 'Bearer $_secretKey'},
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body) as Map<String, dynamic>;
    }

    throw StripeException(
      message: 'Failed to fetch PaymentIntent',
      statusCode: response.statusCode,
      responseBody: response.body,
    );
  }

  /// Cancel a PaymentIntent
  Future<void> cancelPaymentIntent(String paymentIntentId) async {
    final uri = Uri.parse('$_baseUrl/payment_intents/$paymentIntentId/cancel');

    final response = await http.post(
      uri,
      headers: {
        'Authorization': 'Bearer $_secretKey',
        'Content-Type': 'application/x-www-form-urlencoded',
      },
    );

    if (response.statusCode != 200) {
      throw StripeException(
        message: 'Failed to cancel PaymentIntent',
        statusCode: response.statusCode,
        responseBody: response.body,
      );
    }
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
