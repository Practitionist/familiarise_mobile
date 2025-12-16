import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'network_info.g.dart';

/// Abstract interface for network connectivity checking
abstract class NetworkInfo {
  /// Check if device has internet connection
  Future<bool> get isConnected;

  /// Stream of connectivity changes
  Stream<bool> get onConnectivityChanged;
}

/// Implementation using connectivity_plus package
class NetworkInfoImpl implements NetworkInfo {
  final Connectivity _connectivity;

  NetworkInfoImpl(this._connectivity);

  @override
  Future<bool> get isConnected async {
    final result = await _connectivity.checkConnectivity();
    return _isConnected(result);
  }

  @override
  Stream<bool> get onConnectivityChanged {
    return _connectivity.onConnectivityChanged.map(_isConnected);
  }

  bool _isConnected(List<ConnectivityResult> result) {
    return result.any((r) =>
        r == ConnectivityResult.mobile ||
        r == ConnectivityResult.wifi ||
        r == ConnectivityResult.ethernet ||
        r == ConnectivityResult.vpn);
  }
}

/// Provider for Connectivity instance
@riverpod
Connectivity connectivity(Ref ref) {
  return Connectivity();
}

/// Provider for NetworkInfo
@riverpod
NetworkInfo networkInfo(Ref ref) {
  return NetworkInfoImpl(ref.watch(connectivityProvider));
}

/// Provider that watches connectivity status
/// Returns true if connected, false otherwise
@riverpod
Stream<bool> connectivityStatus(Ref ref) {
  final networkInfo = ref.watch(networkInfoProvider);
  return networkInfo.onConnectivityChanged;
}
