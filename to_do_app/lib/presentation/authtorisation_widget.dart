import 'package:flutter/material.dart';
import 'package:to_do_app/login_screen.dart';
import 'package:to_do_app/sevices/auth.dart';
import 'package:to_do_app/task_list_widget.dart';

class AuthtorisationWidget extends StatefulWidget {
  const AuthtorisationWidget({super.key});

  @override
  State<AuthtorisationWidget> createState() => _AuthtorisationWidgetState();
}

class _AuthtorisationWidgetState extends State<AuthtorisationWidget> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Auth().authStateChanges,
      builder: (context, snapshot) {
        if(snapshot.hasData){
          return const TaskListWidget();
        } else {
          return  LoginScreen();
        }
      },
    );
  }
}
