import 'package:flutter/material.dart';
import 'package:to_do_app/login_screen.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    theme:
        ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber)),
        home: const LoginScreen(),
        
  ));
}
