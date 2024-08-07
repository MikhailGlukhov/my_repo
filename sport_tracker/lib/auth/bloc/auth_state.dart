
part of "auth_bloc.dart";


@freezed
class AuthState with _$AuthState {
  const factory AuthState.loading() = _AuthLoadingState;
  const factory AuthState.auteficated(User user) = _AuthAuteficatedState;
  const factory AuthState.unauteficated() = _AuthUnAuteficatedState;
  
}
// enum AuthStatus { aunteficated, unaunteficated, unknown }

// abstract class AuthBlocState {}



// class Loading extends AuthBlocState {}

// class AuthState extends AuthBlocState {
//   final AuthStatus status;
//   final User? user;

//   AuthState._({this.status = AuthStatus.unknown, this.user});

//   AuthState.unknown() : this._();

//   AuthState.aunteficated(User user)
//       : this._(status: AuthStatus.aunteficated, user: user);

//   AuthState.unaunteficated()
//       : this._(status: AuthStatus.unaunteficated, );
// }
