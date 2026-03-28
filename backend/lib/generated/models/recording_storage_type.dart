import 'package:freezed_annotation/freezed_annotation.dart';

enum RecordingStorageType {
  @JsonValue('STREAM_S3')
  streamS3,
  @JsonValue('SUPABASE')
  supabase,
}
