part of 'sign_up_bloc.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState.initial() = _SignUpInitialState;
  const factory SignUpState.inProgress() = _SignUpInProcessState;
  const factory SignUpState.sucess() = _SignUpSucessState;
  const factory SignUpState.error(String? message) = _SignUpErrorState;
}

