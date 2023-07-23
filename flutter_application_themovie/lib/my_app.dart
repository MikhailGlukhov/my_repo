import 'package:flutter/material.dart';
import 'package:flutter_application_themovie/my_app_model.dart';
 import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:flutter_application_themovie/ui/navigation/main_navigation.dart';


import 'Theme/app_colors.dart';


class MyApp extends StatelessWidget {
  final MyAppModel model;
  static final mainNavigation = MainNavigation();
  const MyApp({super.key, required this.model});
  
  get arguments => null;
  
  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme:  ThemeData(
       
       appBarTheme: const AppBarTheme(backgroundColor:AppColors.mainDarkBlue),
       bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: AppColors.mainDarkBlue,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey
       )
      ),
       localizationsDelegates: const [
    
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ],
  supportedLocales: const [
    Locale('ru'), 
    Locale('en'), 
  ],
      routes: mainNavigation.routs,
      
      initialRoute: mainNavigation.initialRoute(model.isAuth),
      onGenerateRoute: mainNavigation.onGenerateRoute,
      
          ) ;
          
        }
         
       }
       
      
        

      
   
