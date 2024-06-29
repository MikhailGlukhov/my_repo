import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:to_do_app/presentation/login_screen.dart';
import 'package:to_do_app/presentation/task_list_widget.dart';

class AuthtorisationWidget extends StatefulWidget {
  const AuthtorisationWidget({super.key});

  @override
  State<AuthtorisationWidget> createState() => _AuthtorisationWidgetState();
}

class _AuthtorisationWidgetState extends State<AuthtorisationWidget> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if(snapshot.hasData){
          return const TaskListWidget();
        } else {
          return  const LoginScreen();
        }
      },
    );
  }
}
