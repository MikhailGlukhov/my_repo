part of 'sign_in_bloc.dart';


@freezed
class SignInState with _$SignInState {
  const factory SignInState.initial() = _SignInInitialState;
  const factory SignInState.inProcess() = _SignInInProcessState;
  const factory SignInState.sucess() = _SignInSucessState;
  const factory SignInState.error(String? message) = _SignInErrorState;
    
}

// abstract class SigInBlocState{

// }
// class SigInBlocInitial extends SigInBlocState{

// }
// class SignInSuccess extends SigInBlocState{

// }

// class SignInFailure extends SigInBlocState{
//   final String? message;

//   SignInFailure(this.message);
// }

// class SignInProcess extends SigInBlocState{
  
// }