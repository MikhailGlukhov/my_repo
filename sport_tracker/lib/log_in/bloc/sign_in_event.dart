part of 'sign_in_bloc.dart';

@freezed
class SigInEvent with _$SigInEvent {
  const factory SigInEvent.logIn({required String email, required String password}) = SignInLoginEvent;
  const factory SigInEvent.logOut() = SingInLogOutEvent;
}

// abstract class SigInBlocEvent{

// }

// class SignInRequired extends SigInBlocEvent{
//   final String email;
//   final String password;

//   SignInRequired(this.email, this.password);
// }

// class SignOutRequired extends SigInBlocEvent{
  
// }