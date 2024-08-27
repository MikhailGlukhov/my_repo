



import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fireauth/fireauth.dart';
part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository authRepository;
  // late final StreamSubscription<User?> _userSubscription;
  AuthBloc({required this.authRepository}) : super(const AuthState.loading()) {
    // _userSubscription = authRepository.user.listen((user){
    //   add(AuthEvent.userChanging(user));
    // });
    on<AuthEventsUserChangingEvent>((event, emit)  {
      // if(event.user != null){
      //   emit(const AuthState.unauteficated());
      // }
      // event.user!.reload();
      // if(event.user!.emailVerified){
      //   emit(AuthState.auteficated(event.user!));
      // }else{
      //   emit(const AuthState.unauteficated());
      // }
      
        
        if(event.user!.emailVerified){
          emit(AuthState.auteficated(event.user!));
        }else{
          emit(const AuthState.unauteficated());
                  }
      
    });
  }
  
  //  @override
  // Future<void> close(){
  //   _userSubscription.cancel();
  //   return super.close();
  // }
  }

 
