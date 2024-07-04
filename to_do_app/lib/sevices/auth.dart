import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:to_do_app/presentation/email_verification.dart';
import 'package:to_do_app/presentation/task_list_widget.dart';

class Auth {
  final _firebaseAuth = FirebaseAuth.instance;
  User? get currentUser => _firebaseAuth.currentUser;

  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();

  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
    required  context,
   
  }) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      ); if(currentUser!.emailVerified){
       Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const TaskListWidget(),
          ));} else {
             Fluttertoast.showToast(
          msg: 'Verificate your email please',
          gravity: ToastGravity.SNACKBAR,
          toastLength: Toast.LENGTH_LONG);
          }
      
    } on FirebaseAuthException catch (e) {
      String message = '';
      if (e.code == 'invalid-credential') {
        message = 'Wrong password or email';
      } else {
        message = 'User not found';
      }
      Fluttertoast.showToast(
          msg: message,
          gravity: ToastGravity.SNACKBAR,
          toastLength: Toast.LENGTH_LONG);
    }
  }

  Future<void> createUserWithEmailAndPassword({
    required String email,
    required String password,
    required  context,
  }) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const EmailVerification(),
          ));
    } on FirebaseAuthException catch (e) {
      String message = '';
      if (e.code == 'email-already-in-use') {
        message = 'Account already exists with this email';
      } else if (e.code == 'weak-password') {
        message = 'Password too short';
      } else {
        message = 'Unknown error';
      }
      Fluttertoast.showToast(
          msg: message,
          gravity: ToastGravity.SNACKBAR,
          toastLength: Toast.LENGTH_LONG);
    }
  }

  Future<void> resetPassword(String email) async {
    await _firebaseAuth.sendPasswordResetEmail(email: email);
    Fluttertoast.showToast(
        msg: 'We send you email. Please check your mail',
        gravity: ToastGravity.CENTER,
        toastLength: Toast.LENGTH_LONG);
  }

  Future<void> emailVerification() async{
    await _firebaseAuth.currentUser?.sendEmailVerification();
    Fluttertoast.showToast(
        msg: 'We send you email. Please check your mail',
        gravity: ToastGravity.CENTER,
        toastLength: Toast.LENGTH_LONG);
  }



  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }
}
