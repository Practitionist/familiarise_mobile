import 'dart:io';
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';

void main() {
  final userId = Platform.environment['USER_ID'] ?? 'test_intg_cbj_cte';
  final jwt = JWT(
    {'userId': userId, 'sessionId': 'test-session'},
    issuer: 'familiarise-backend',
  );
  print(jwt.sign(
    SecretKey('mtOLtDSpKQCVk66q3+NNs6o4Ph/stv8db5x791LZoUQ='),
    expiresIn: const Duration(hours: 2),
  ));
}
