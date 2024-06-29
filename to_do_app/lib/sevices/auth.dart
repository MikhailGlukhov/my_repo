import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:to_do_app/presentation/task_list_widget.dart';


class Auth {
  final _firebaseAuth = FirebaseAuth.instance;
  User? get currentUser => _firebaseAuth.currentUser;

  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();
  

  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
    required BuildContext context,
  }) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      await Future.delayed(const Duration(seconds: 1));
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const TaskListWidget(),
          ));
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
    required BuildContext context,
  }) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  
    await Future.delayed(const Duration(seconds: 1));
    Navigator.pushReplacement( context,
          MaterialPageRoute(
            builder: (context) => const TaskListWidget(),
          ));
    } on FirebaseAuthException catch (e) {
      String message = '';
      if (e.code == 'email-already-in-use') {
        message = 'Account already exists with this email';
      } else if(e.code == 'weak-password') {
        message = 'Password too short';
        
      }
      else{
        message = 'Unknown error';
      }
      Fluttertoast.showToast(
          msg: message,
          gravity: ToastGravity.SNACKBAR,
          toastLength: Toast.LENGTH_LONG);
    }
    
  }

  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }
}
