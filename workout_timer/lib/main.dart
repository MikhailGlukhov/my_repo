import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:workout_timer/my_app.dart';
import 'package:workout_timer/servise/time_servise.dart';

void main() {
  runApp(ChangeNotifierProvider<TimeServise>(
      create: (context) => TimeServise(), child: const MyApp()));
}
