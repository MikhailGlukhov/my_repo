import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sport_tracker/sport_tracker.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const SportTracker());
}