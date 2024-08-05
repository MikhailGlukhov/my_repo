import 'package:flutter/material.dart';
import 'package:sport_tracker/enter_screen.dart';

class SportTracker extends StatelessWidget {
  const SportTracker({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme: const TextTheme(
              titleMedium: TextStyle(fontSize: 18),
              titleLarge:
                  TextStyle(fontSize: 36, fontWeight: FontWeight.w600))),
      home: const EnterScreen(),
    );
  }
}
