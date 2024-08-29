

part of 'sign_up_bloc.dart';

@freezed
class SignUpEvent with _$SignUpEvent{
  const factory SignUpEvent.registrating({required String email, required String password}) = SingUpRegistratingEvent;
  const factory SignUpEvent.verificatingEmail() = SingUpVerificatingEmailEvent;
  
}



