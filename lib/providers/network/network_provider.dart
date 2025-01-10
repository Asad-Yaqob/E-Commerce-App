import 'package:capjewel/utils/network/network_manager.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final networkManagerProvider = Provider((ref) => NetworkManager());

final connectivityProvider = StreamProvider<bool>((ref) {
  final networkManager = ref.watch(networkManagerProvider);
  return networkManager.connectivityStream;
});
