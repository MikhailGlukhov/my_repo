part of 'sign_in_bloc.dart';

@freezed
class SigInEvent with _$SigInEvent {
  const factory SigInEvent.logIn( {required String email, required String password} ) = SignInLoginEvent;
  const factory SigInEvent.logOut() = SingInLogOutEvent;
}

