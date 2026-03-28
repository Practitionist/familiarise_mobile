import 'package:freezed_annotation/freezed_annotation.dart';

enum Platform {
  @JsonValue('ZOOM')
  zoom,
  @JsonValue('GOOGLE_MEET')
  googleMeet,
  @JsonValue('MICROSOFT_TEAMS')
  microsoftTeams,
  @JsonValue('STREAM')
  stream,
  @JsonValue('CUSTOM')
  custom,
}
