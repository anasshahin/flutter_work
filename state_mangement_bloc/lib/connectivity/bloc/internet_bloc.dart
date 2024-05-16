
import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:meta/meta.dart';

part 'internet_event.dart';
part 'internet_state.dart';

class InternetBloc extends Bloc<InternetEvent, InternetState> {
  StreamSubscription? _streamSubscription;
  InternetBloc() : super(InternetInitial()) {
    on<InternetEvent>((event, emit) {
      if (event is ConnectedEvent){
        emit(ConnectedState(message: 'Connected'));
      }
      else if (event is NotConnectedEvent){
        emit(NotConnectedState(message: 'Not connected'));
      }

    });
    _streamSubscription=  Connectivity().onConnectivityChanged.listen(
            (List<ConnectivityResult> result) {
      if(result.contains(ConnectivityResult.wifi)
      || result.contains(ConnectivityResult.mobile) ){
        add(ConnectedEvent());
      }else{
        add(NotConnectedEvent());
      }

    });

  }
  @override
  Future<void> close() {
    _streamSubscription?.cancel();
    return  super.close();
  }
}
