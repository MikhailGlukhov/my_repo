import 'package:flutter/material.dart';
import 'package:workout_timer/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.white,fontWeight: FontWeight.w600)),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.black,
      ),
      home: const MyHomePage(),
    );
  }
}
