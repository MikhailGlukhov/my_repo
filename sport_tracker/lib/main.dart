import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';


import 'package:sport_tracker/auth/auth_repository.dart';
import 'package:sport_tracker/firestore/firestore.dart';



import 'package:sport_tracker/my_app.dart';


import 'package:sport_tracker/timer_select/timer_service.dart';



Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  runApp( MyApp(AuthRepository(),FirestoreRepository(),TimerService()));
}
