import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

import 'package:pointycastle/export.dart';

/// PAN encryption utility — AES-256-GCM.
///
/// Wire format (identical to familiarise_web `lib/payments/tax/pan-crypto.ts`
/// so a PAN encrypted by either app is decryptable by the other):
///   [12-byte IV][ciphertext][16-byte auth tag]
///
/// Key: `PAN_ENCRYPTION_KEY` env var (64 hex chars = 32 bytes).
/// Generate with: `openssl rand -hex 32`.
class PanCrypto {
  static const int _ivLength = 12;
  static const int _authTagBits = 128; // 16-byte tag

  static final Random _rng = Random.secure();

  /// Load and validate the 32-byte key from `PAN_ENCRYPTION_KEY`.
  ///
  /// Throws [StateError] when the key is missing or malformed — the endpoint
  /// fails closed rather than persisting a PAN in plaintext.
  static Uint8List _key(String? hex) {
    if (hex == null || hex.length != 64) {
      throw StateError(
        'PAN_ENCRYPTION_KEY must be a 64-character hex string (32 bytes). '
        'Generate with: openssl rand -hex 32',
      );
    }
    final bytes = Uint8List(32);
    for (var i = 0; i < 32; i++) {
      bytes[i] = int.parse(hex.substring(i * 2, i * 2 + 2), radix: 16);
    }
    return bytes;
  }

  /// Encrypt a PAN string into `[IV][ciphertext][tag]` bytes.
  static Uint8List encrypt(String pan, {String? keyHex}) {
    final key = _key(keyHex);
    final iv = Uint8List.fromList(
      List<int>.generate(_ivLength, (_) => _rng.nextInt(256)),
    );
    final gcm = GCMBlockCipher(AESEngine())
      ..init(
        true,
        AEADParameters(KeyParameter(key), _authTagBits, iv, Uint8List(0)),
      );
    // pointycastle appends the 16-byte auth tag to the ciphertext, matching
    // Node's `Buffer.concat([ciphertext, authTag])`.
    final sealed = gcm.process(Uint8List.fromList(utf8.encode(pan)));
    return Uint8List.fromList([...iv, ...sealed]);
  }

  /// Decrypt `[IV][ciphertext][tag]` bytes back to the PAN string.
  static String decrypt(List<int> combined, {String? keyHex}) {
    final key = _key(keyHex);
    final bytes = Uint8List.fromList(combined);
    final iv = bytes.sublist(0, _ivLength);
    final sealed = bytes.sublist(_ivLength);
    final gcm = GCMBlockCipher(AESEngine())
      ..init(
        false,
        AEADParameters(KeyParameter(key), _authTagBits, iv, Uint8List(0)),
      );
    return utf8.decode(gcm.process(sealed));
  }
}
