import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

part 'network_event.dart';
part 'network_state.dart';

class NetworkBloc extends Bloc<NetworkEvent, NetworkState> {
  StreamSubscription? _subscription;

  NetworkBloc() : super(NetworkState()) {
    _subscription = Connectivity()
        .onConnectivityChanged
        .listen((List<ConnectivityResult> result) {
      if (result.every((r) => r == ConnectivityResult.none)) {
        add(NetworkDisconnectedEvent());
      } else {
        add(NetworkConnectedEvent());
      }
    });
    on<NetworkConnectedEvent>(_networkConnected);
    on<NetworkDisconnectedEvent>(_networkDisconnected);
  }

  void _networkConnected(NetworkConnectedEvent event, emit) {
    emit(NetworkSuccess());
  }

  void _networkDisconnected(NetworkDisconnectedEvent event, emit) {
    emit(NetworkFailure());
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}
