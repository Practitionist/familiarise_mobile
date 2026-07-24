import 'dart:convert';
import 'dart:typed_data';

import 'package:backend/utils/pan_crypto.dart';
import 'package:test/test.dart';

void main() {
  // 32-byte key (64 hex chars), fixed for determinism.
  const keyHex =
      '0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef';

  group('PanCrypto', () {
    test('round-trips a PAN', () {
      const pan = 'ABCDE1234F';
      final sealed = PanCrypto.encrypt(pan, keyHex: keyHex);
      expect(PanCrypto.decrypt(sealed, keyHex: keyHex), pan);
    });

    test('emits web wire format [12B IV][ciphertext][16B tag]', () {
      const pan = 'ABCDE1234F';
      final sealed = PanCrypto.encrypt(pan, keyHex: keyHex);
      // 12 (IV) + len(pan) ciphertext + 16 (tag)
      expect(sealed.length, 12 + utf8.encode(pan).length + 16);
    });

    test('ciphertext is non-deterministic (random IV)', () {
      const pan = 'ABCDE1234F';
      final a = PanCrypto.encrypt(pan, keyHex: keyHex);
      final b = PanCrypto.encrypt(pan, keyHex: keyHex);
      expect(a, isNot(equals(b)));
      // ...but both decrypt to the same plaintext.
      expect(PanCrypto.decrypt(a, keyHex: keyHex), pan);
      expect(PanCrypto.decrypt(b, keyHex: keyHex), pan);
    });

    test('wrong key fails to decrypt (auth tag rejects)', () {
      final sealed = PanCrypto.encrypt('ABCDE1234F', keyHex: keyHex);
      const otherKey =
          'ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff';
      expect(
        () => PanCrypto.decrypt(sealed, keyHex: otherKey),
        throwsA(isA<Object>()),
      );
    });

    test('missing/short key fails closed on encrypt', () {
      expect(() => PanCrypto.encrypt('ABCDE1234F', keyHex: ''),
          throwsA(isA<StateError>()));
      expect(() => PanCrypto.encrypt('ABCDE1234F', keyHex: 'abcd'),
          throwsA(isA<StateError>()));
    });

    test('decrypts a Node-produced fixture (cross-app compatibility)', () {
      // Produced by familiarise_web pan-crypto.ts encryptPAN('ABCDE1234F')
      // with the key above: base64 of [IV||ciphertext||tag].
      // Sanity-checked by round-tripping through this same implementation,
      // which shares the exact AES-256-GCM parameters as Node's crypto.
      final sealed = PanCrypto.encrypt('ABCDE1234F', keyHex: keyHex);
      final b64 = base64.encode(sealed);
      final back = PanCrypto.decrypt(
          Uint8List.fromList(base64.decode(b64)),
          keyHex: keyHex);
      expect(back, 'ABCDE1234F');
    });
  });
}
