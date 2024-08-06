import 'package:firebase_auth/firebase_auth.dart';

class Auth {
  final _firebaseAuth = FirebaseAuth.instance;
  Future<void> signUp({required String email, required String password}) async {
    try {
      _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
      
    } on FirebaseAuthException catch (e){ 
      if(e.code == 'weak-password'){
        throw Exception('This password is too weak');      }
        else if(e.code == 'email-already-in-use'){
          throw Exception('This account alredy exist for this email');        }
      
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
