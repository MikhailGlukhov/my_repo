import 'package:boxing_timer/clock.dart';
import 'package:boxing_timer/rest.dart';
import 'package:boxing_timer/time_select.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
    
     initialRoute: '/',
      routes: {
        '/':(context) =>  const TimeSelect(),
        '/clock':(context) =>  const ClockWidget( timeRound: 2, timeRest: 2,),
        '/clock/rest':(context) => const RestClock(timeRest: 2, timeRound: 2, )
      }, 
       /*onGenerateRoute: (settings) {
        if(settings.name == '/clock'){
          final timeRound = settings.arguments as int;
          final timeRest = settings.arguments as int;
          return MaterialPageRoute(builder: (_) =>  ClockWidget(timeRound: timeRound, timeRest: timeRest, ));
        }
        if(settings.name == '/clock/rest'){
           final timeRound = settings.arguments as int;
          final timeRest = settings.arguments as int;
          return MaterialPageRoute(builder: (_) => RestClock( timeRound: timeRound,timeRest: timeRest,) );
        }
      },*/
    );
  }
}
