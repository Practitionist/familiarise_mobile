import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:http/http.dart' as http;

/// Service for interacting with Razorpay API
///
/// Uses package:http for HTTP requests - no manual lifecycle management needed.
class RazorpayService {
  static const String _baseUrl = 'https://api.razorpay.com/v1';

  final String _keyId;
  final String _keySecret;

  RazorpayService({
    required String keyId,
    required String keySecret,
  })  : _keyId = keyId,
        _keySecret = keySecret;

  /// Create a new Razorpay order
  ///
  /// [amountInPaise] - Amount in smallest currency unit (paise for INR)
  /// [currency] - Currency code (e.g., 'INR')
  /// [receipt] - Optional receipt identifier
  /// [notes] - Optional notes
  ///
  /// Returns the Razorpay order details including order_id
  Future<RazorpayOrder> createOrder({
    required int amountInPaise,
    required String currency,
    String? receipt,
    Map<String, dynamic>? notes,
  }) async {
    final uri = Uri.parse('$_baseUrl/orders');

    final body = {
      'amount': amountInPaise,
      'currency': currency,
      if (receipt != null) 'receipt': receipt,
      if (notes != null) 'notes': notes,
    };

    // Basic Auth header
    final credentials = base64Encode(utf8.encode('$_keyId:$_keySecret'));

    final response = await http.post(
      uri,
      headers: {
        'Authorization': 'Basic $credentials',
        'Content-Type': 'application/json',
      },
      body: jsonEncode(body),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      return RazorpayOrder.fromJson(data);
    }

    throw RazorpayException(
      message: 'Failed to create Razorpay order',
      statusCode: response.statusCode,
      responseBody: response.body,
    );
  }

  /// Verify payment signature
  ///
  /// Razorpay signs the payment response with HMAC-SHA256 using your key secret.
  /// This method verifies that the payment callback is authentic.
  bool verifyPaymentSignature({
    required String orderId,
    required String paymentId,
    required String signature,
  }) {
    final message = '$orderId|$paymentId';

    // Calculate HMAC-SHA256
    final hmac = Hmac(sha256, utf8.encode(_keySecret));
    final digest = hmac.convert(utf8.encode(message));
    final expectedSignature = digest.toString();

    return signature == expectedSignature;
  }

  /// Fetch payment details by payment ID
  Future<Map<String, dynamic>> getPayment(String paymentId) async {
    final uri = Uri.parse('$_baseUrl/payments/$paymentId');

    // Basic Auth header
    final credentials = base64Encode(utf8.encode('$_keyId:$_keySecret'));

    final response = await http.get(
      uri,
      headers: {'Authorization': 'Basic $credentials'},
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body) as Map<String, dynamic>;
    }

    throw RazorpayException(
      message: 'Failed to fetch payment',
      statusCode: response.statusCode,
      responseBody: response.body,
    );
  }
}

/// Razorpay order details
class RazorpayOrder {
  final String id;
  final String entity;
  final int amount;
  final int amountPaid;
  final int amountDue;
  final String currency;
  final String? receipt;
  final String status;
  final int createdAt;

  RazorpayOrder({
    required this.id,
    required this.entity,
    required this.amount,
    required this.amountPaid,
    required this.amountDue,
    required this.currency,
    this.receipt,
    required this.status,
    required this.createdAt,
  });

  factory RazorpayOrder.fromJson(Map<String, dynamic> json) {
    return RazorpayOrder(
      id: json['id'] as String,
      entity: json['entity'] as String,
      amount: json['amount'] as int,
      amountPaid: json['amount_paid'] as int,
      amountDue: json['amount_due'] as int,
      currency: json['currency'] as String,
      receipt: json['receipt'] as String?,
      status: json['status'] as String,
      createdAt: json['created_at'] as int,
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'entity': entity,
        'amount': amount,
        'amount_paid': amountPaid,
        'amount_due': amountDue,
        'currency': currency,
        'receipt': receipt,
        'status': status,
        'created_at': createdAt,
      };
}

/// Razorpay API exception
class RazorpayException implements Exception {
  final String message;
  final int? statusCode;
  final String? responseBody;

  RazorpayException({
    required this.message,
    this.statusCode,
    this.responseBody,
  });

  @override
  String toString() =>
      'RazorpayException: $message (status: $statusCode, response: $responseBody)';
}
