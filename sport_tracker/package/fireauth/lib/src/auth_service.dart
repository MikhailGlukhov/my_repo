

part of fireauth;




class AuthRepository {
  final _firebaseAuth = FirebaseAuth.instance;

  User? get currentUser => _firebaseAuth.currentUser;

  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();

  Future<void> signUp({required String email, required String password}) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
     
      if (e.code == 'weak-password') {
       
         throw ('This password is too weak'.tr());
       
      } else if (e.code == 'email-already-in-use') {
       
        throw ('This account alredy exist for this email'.tr());
         
      } else {
       
        throw ('Unknown error'.tr());
      }
    
    }
  }

  Future<void> signIn({required String email, required String password}) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
   
      if (e.code == 'invalid-credential') {
      
        throw ('Wrong password or eamil'.tr());
        
      } else {
        
        throw ('User not found'.tr());
       
      }
      
    }
  }

  Future<void> resetPassword({required String email}) async {
    await _firebaseAuth.sendPasswordResetEmail(email: email);
  }

  Future<void> sendEmailVerification() async {
    
    await _firebaseAuth.currentUser?.sendEmailVerification();
  }

  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }
}
