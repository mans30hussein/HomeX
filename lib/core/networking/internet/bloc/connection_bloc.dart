import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';


import '../cubit/inter_net_state.dart';
import 'connection_event.dart';




class InternetBloc extends Bloc<InternetEvent, InternetState> {
  StreamSubscription? _subscription;
  InternetBloc() : super(InternetInitial()) {
    on<InternetEvent>((event, emit) {
      if (event is ConnectedEvent) {
        emit(ConnectedState(message: "Connected"));
      } else if (event is NotConnectedEvent) {
        emit(NotConnectedState(message: "Not Connected"));
      }
    });

    _subscription = Connectivity()
        .onConnectivityChanged
        .listen(( result) {
      if (result == ConnectivityResult.wifi ||
          result == ConnectivityResult.mobile) {
        add(ConnectedEvent());
      } else {
        add(NotConnectedEvent());
      }
    });
  }
  @override
  Future<void> close() {
  _subscription!.cancel();
    return super.close();
  }
}