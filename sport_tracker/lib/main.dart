import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:sport_tracker/firebase_options.dart';



import 'package:sport_tracker/firestore/firestore.dart';



import 'package:sport_tracker/my_app.dart';

import 'package:sport_tracker/settings/service/settings_service.dart';
import 'package:fireauth/fireauth.dart';

import 'package:sport_tracker/timer_select/timer_service.dart';
import 'package:talker_flutter/talker_flutter.dart';




Future<void> main() async {
  TalkerFlutter.init();
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox('settings');
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await EasyLocalization.ensureInitialized();
  runApp( EasyLocalization(supportedLocales: const [Locale('en', 'US'), Locale('ru', 'RU')],
  path: 'assets/translations',
  fallbackLocale: const Locale('en', 'US'),
  child: MyApp(AuthRepository(),FirestoreRepository(),TimerService(), SettingsService(),Connectivity()  )));
}
