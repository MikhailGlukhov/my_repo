part of 'sign_in_bloc.dart';


@freezed
class SignInState with _$SignInState {
  const factory SignInState.initial() = _SignInInitialState;
  const factory SignInState.inProcess() = _SignInInProcessState;
  const factory SignInState.sucess() = _SignInSucessState;
  const factory SignInState.error(String? message) = _SignInErrorState;
    
}
