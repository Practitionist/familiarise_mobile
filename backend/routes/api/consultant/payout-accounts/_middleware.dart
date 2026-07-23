import 'package:backend/config/feature_flags.dart';
import 'package:dart_frog/dart_frog.dart';

Handler middleware(Handler handler) =>
    handler.use(featureGate(enabled: FeatureFlags.payouts));
