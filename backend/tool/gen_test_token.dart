import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';

void main() {
  final jwt = JWT(
    {
      'userId': 'test_intg_cbj_cnt',
      'sessionId': 'test-session-001',
    },
    issuer: 'familiarise-backend',
  );

  final token = jwt.sign(
    SecretKey('mtOLtDSpKQCVk66q3+NNs6o4Ph/stv8db5x791LZoUQ='),
    expiresIn: const Duration(hours: 2),
  );

  print(token);
}
