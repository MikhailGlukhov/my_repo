import 'package:firebase_auth/firebase_auth.dart';



class AuthRepository {
  final _firebaseAuth = FirebaseAuth.instance;

  User? get currentUser => _firebaseAuth.currentUser;

  Stream<User?> get user =>
      _firebaseAuth.authStateChanges().map((firebaseUser) {
        final user = firebaseUser;
        return user;
      });

  Future<void> signUp({required String email, required String password}) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
       
        throw Exception('This password is too weak');
      } else if (e.code == 'email-already-in-use') {
        
        throw Exception('This account alredy exist for this email');
      } else {
        
        throw Exception('Unknown error');
      }
    }
  }

  Future<void> signIn({required String email, required String password}) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'invalid-credential') {
      
        throw Exception('Wrong password or eamil');
      } else {
        
        throw Exception('User not found');
      }
    }
  }

  Future<void> resetPassword({required String email}) async {
    await _firebaseAuth.sendPasswordResetEmail(email: email);
  }

  Future<void> emailVerification({required String ema}) async {
    await _firebaseAuth.currentUser!.sendEmailVerification();
  }

  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }
}
