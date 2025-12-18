import 'package:freezed_annotation/freezed_annotation.dart';

part 'agreement_data.freezed.dart';
part 'agreement_data.g.dart';

/// Agreement acceptance data collected in Step 3
@freezed
class AgreementData with _$AgreementData {
  const factory AgreementData({
    /// Whether terms of service have been accepted
    @Default(false) bool termsAccepted,

    /// Whether privacy policy has been accepted
    @Default(false) bool privacyAccepted,

    /// Timestamp when agreements were accepted
    DateTime? acceptedAt,
  }) = _AgreementData;

  const AgreementData._();

  factory AgreementData.fromJson(Map<String, dynamic> json) =>
      _$AgreementDataFromJson(json);

  /// Both terms and privacy must be accepted
  bool get isAccepted => termsAccepted && privacyAccepted;

  /// Alias for isAccepted for compatibility
  bool get isValid => isAccepted;

  /// Create a copy with acceptance timestamp set to now
  AgreementData acceptNow() => copyWith(
        termsAccepted: true,
        privacyAccepted: true,
        acceptedAt: DateTime.now().toUtc(),
      );
}
