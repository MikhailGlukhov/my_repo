
part of "auth_bloc.dart";


@freezed
class AuthState with _$AuthState {
  const factory AuthState.loading() = _AuthLoadingState;
  const factory AuthState.auteficated(User user) = _AuthAuteficatedState;
  const factory AuthState.unauteficated() = _AuthUnAuteficatedState;
  
}
