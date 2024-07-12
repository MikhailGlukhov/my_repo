

import 'package:flutter/material.dart';
import 'package:workout_timer/widgets/buttons.dart';
import 'package:workout_timer/widgets/rounds.dart';
import 'package:workout_timer/widgets/time_rest.dart';
import 'package:workout_timer/widgets/time_round.dart';
import 'package:workout_timer/widgets/timer.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
 
    return const Scaffold(
      body: Center(
          child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TimerWidget(),
            SizedBox(
              height: 25,
            ), Buttons(),
           
            SizedBox(
              height: 20,
            ),
            Text('Rounds time in minute'),
            TimeRound(),
            SizedBox(
              height: 20,
            ),
            Text('Rest time in seconds'),
            TimeRest(),
            SizedBox(
              height: 20,
            ),
            Text('Rounds'),
            Rounds()
          ],
        ),
      )),
    );
  }
}







