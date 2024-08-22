import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'connectivity_state.dart';
part 'connectivity_cubit.freezed.dart';

class ConnectivityCubit extends Cubit<ConnectivityState> {
  // final Connectivity _connectivity;
  // late final StreamSubscription _connectivityStream;
  List<ConnectivityResult> _connectionStatus = [ConnectivityResult.none];
  final Connectivity _connectivity = Connectivity();
  late StreamSubscription<List<ConnectivityResult>> _connectivitySubscription;
  
  ConnectivityCubit() :  super(ConnectivityState.initial()) {

       Future<void> _updateConnectionStatus(List<ConnectivityResult> result) async {
   
      _connectionStatus = result;
  
  }

    _connectivitySubscription =
        _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
  
  Future<void> initConnectivity() async {
    late List<ConnectivityResult> result;
   
   
      result = await _connectivity.checkConnectivity();
  
       
   
    return _updateConnectionStatus(result);
  }

         initConnectivity();
         if(_connectionStatus == ConnectivityResult.none){
          emit(ConnectivityState.offline());
         } else if(_connectionStatus == ConnectivityResult.vpn){
          emit(ConnectivityState.vpn());
         } else {emit(ConnectivityState.connected());}
 

    // _connectivityStream = _connectivity.onConnectivityChanged.listen((res){
    //   if(res == ConnectivityResult.mobile || res == ConnectivityResult.wifi){
    //     emit(ConnectivityState.connected());
    //   }else if(res == ConnectivityResult.none){
    //     emit(ConnectivityState.offline());
    //   } else if(res == ConnectivityResult.vpn){
    //     emit(ConnectivityState.vpn());
    //   }

      
    // });

 
  }
  Future<void> close() {
_connectivitySubscription.cancel();
 return super.close();
  }
}
