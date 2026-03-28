import 'package:freezed_annotation/freezed_annotation.dart';

enum RecordingStoragePolicy {
  @JsonValue('STREAM_ONLY')
  streamOnly,
  @JsonValue('SUPABASE_PERMANENT')
  supabasePermanent,
}
