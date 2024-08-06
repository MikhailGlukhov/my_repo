abstract class SigInBlocEvent{

}

class SignInRequired extends SigInBlocEvent{
  final String email;
  final String password;

  SignInRequired(this.email, this.password);
}

class SignOutRequired extends SigInBlocEvent{
  
}