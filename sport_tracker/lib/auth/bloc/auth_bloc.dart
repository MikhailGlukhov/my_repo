import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sport_tracker/auth/auth_repository.dart';
import 'package:sport_tracker/auth/bloc/auth_events.dart';
import 'package:sport_tracker/auth/bloc/auth_state.dart';

class AuthBloc extends Bloc<AuthBlocEvent, AuthBlocState> {
  final AuthRepository authRepository;
  late final StreamSubscription<User?> _userSubscription;
  AuthBloc({required this.authRepository}) : super(AuthState.unknown()) {
    _userSubscription = authRepository.user.listen((authUser){
      add(AuthUserChanged(authUser));
    });
    on<AuthUserChanged>((event, emit)  {
      
        if(event.user != null){
          emit(AuthState.aunteficated(event.user!));
        }else{
          emit(AuthState.unaunteficated());
                  }
      
    });
  }

  @override
  Future<void> close(){
    _userSubscription.cancel();
    return super.close();
  }
}