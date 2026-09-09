import 'package:bloc/bloc.dart';

part 'network_event.dart';
part 'network_state.dart';

class NetworkBloc extends Bloc<NetworkEvent, NetworkState> {
  NetworkBloc() : super(NetworkSuccess()) {
    on<NetworkConnectedEvent>(_networkConnected);
    on<NetworkDisconnectedEvent>(_networkDisconnected);
  }

  void _networkConnected(NetworkConnectedEvent event, emit) {
    emit(NetworkSuccess());
  }

  void _networkDisconnected(NetworkDisconnectedEvent event, emit) {
    // In study/offline mode, keep NetworkSuccess so navigation is uninterrupted
    emit(NetworkSuccess());
  }
}
