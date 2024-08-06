import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sport_tracker/auth/auth_repository.dart';
import 'package:sport_tracker/log_in/bloc/sig_in_event.dart';
import 'package:sport_tracker/log_in/bloc/sig_in_state.dart';

class SigInBloc extends Bloc<SigInBlocEvent, SigInBlocState> {
  final AuthRepository authRepository;
  SigInBloc(this.authRepository) : super(SigInBlocInitial()) {
    on<SignInRequired>((event, emit) async{
      emit(SignInProcess());
      try {
        await authRepository.signIn(email: event.email, password: event.password);
        emit(SignInSuccess());
      } catch (e) {
        log(e.toString());
        emit(SignInFailure(e.toString()));
      }
    });
    on<SignOutRequired>((event, emit) async{
      await authRepository.signOut();
    });
  }
}