
part of "auth_bloc.dart";

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.userChanging(User? user) = AuthEventsUserChangingEvent;
}

// abstract class AuthBlocEvent{

// }



// class AuthUserChanged extends AuthBlocEvent{
//   final User? user;

//   AuthUserChanged(this.user);
// }