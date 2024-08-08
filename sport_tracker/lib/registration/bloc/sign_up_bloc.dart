import 'dart:developer';


import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:sport_tracker/auth/auth_repository.dart';

part 'sign_up_bloc.freezed.dart';
part 'sign_up_event.dart';
part 'sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final AuthRepository authRepository;
  SignUpBloc(this.authRepository) : super(const SignUpState.initial()) {
    on<SingUpRegistratingEvent>((event, emit) async{
      emit(const SignUpState.inProgress());
      try {
        await authRepository.signUp(email: event.email, password: event.password);
        authRepository.currentUser;
       
        emit(const SignUpState.sucess());
      } catch (e) {
        log(e.toString());
        emit(SignUpState.error(e.toString()));
      }
    });
    on<SingUpVerificatingEmailEvent>((event, emit) async{
      authRepository.currentUser;
      await authRepository.sendEmailVerification();
      emit(const SignUpState.sucess());
    });
    
  }
}
