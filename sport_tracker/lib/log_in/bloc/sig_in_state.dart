abstract class SigInBlocState{

}
class SigInBlocInitial extends SigInBlocState{

}
class SignInSuccess extends SigInBlocState{

}

class SignInFailure extends SigInBlocState{
  final String? message;

  SignInFailure(this.message);
}

class SignInProcess extends SigInBlocState{
  
}