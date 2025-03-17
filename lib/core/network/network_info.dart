import 'package:connectivity_plus/connectivity_plus.dart';

// Interface for checking internet connectivity
abstract class NetworkInfoI {
  /// Returns [true] if connected to the internet, else [false]
  Future<bool> isConnected();

  /// Returns the current connectivity result (Wifi, Mobile, None)
  Future<ConnectivityResult> get connectivityResult;

  /// Stream that provides updates when the connectivity status changes
  Stream<ConnectivityResult> get onConnectivityChanged;
}

class NetworkInfo implements NetworkInfoI {
  final Connectivity _connectivity;

  NetworkInfo(this._connectivity);

  /// Checks if the internet is connected or not.
  @override
  Future<bool> isConnected() async {
    final result = await _connectivity.checkConnectivity();
    return result != ConnectivityResult.none;
  }

  /// Returns the current connectivity result.
  @override
  Future<ConnectivityResult> get connectivityResult async {
    return await _connectivity.checkConnectivity();
  }

  /// Returns a stream of updates for when the connectivity status changes.
  @override
  Stream<ConnectivityResult> get onConnectivityChanged {
    return _connectivity.onConnectivityChanged;
  }
}
