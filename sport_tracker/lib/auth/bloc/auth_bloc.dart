



import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fireauth/fireauth.dart';
part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository authRepository;
 
  AuthBloc({required this.authRepository}) : super(const AuthState.loading()) {
   
    on<AuthEventsUserChangingEvent>((event, emit)  {
                  
        if(event.user!.emailVerified){
          emit(AuthState.auteficated(event.user!));
        }else{
          emit(const AuthState.unauteficated());
                  }
      
    });
  }
  
 
  }

 
