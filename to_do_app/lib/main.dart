import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app/login_screen.dart';
import 'package:to_do_app/model/task_model.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (BuildContext context) => AddTask(),
    child: MaterialApp(debugShowCheckedModeBanner: false,
      theme:
          ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber)),
          home: const LoginScreen(),
          
    ),
  ));
}
