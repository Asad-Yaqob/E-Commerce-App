import 'package:connectivity_plus/connectivity_plus.dart';

class NetworkManager {
  final Connectivity _connectivity = Connectivity();

  Future<bool> isConnected() async {
    final results = await _connectivity.checkConnectivity();
    return results.isNotEmpty &&
        results.any((result) => result != ConnectivityResult.none);
  }

  Stream<bool> get connectivityStream =>
      _connectivity.onConnectivityChanged.map(
        (results) =>
            results.isNotEmpty &&
            results.any((result) => result != ConnectivityResult.none),
      );
}
