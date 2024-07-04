import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:to_do_app/presentation/login_screen.dart';
import 'package:to_do_app/presentation/task_list_widget.dart';

class AuthtorisationWidget extends StatelessWidget {
  const AuthtorisationWidget({super.key, });



  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if(snapshot.data == null){
          return const LoginScreen();
        }  
        final user =snapshot.data!;
        user.reload();
        if(user.emailVerified){
          return const TaskListWidget();
        }
         else {
          return  const LoginScreen();
        }
      },
    );
  }
}
