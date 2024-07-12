import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:workout_timer/servise/time_servise.dart';
import 'package:workout_timer/widgets/buttons.dart';
import 'package:workout_timer/widgets/rounds.dart';
import 'package:workout_timer/widgets/time_rest.dart';
import 'package:workout_timer/widgets/time_round.dart';
import 'package:workout_timer/widgets/timer.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TimeServise>(context);

    return Scaffold(
      body: Center(
          child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              provider.currentState,
              style: const TextStyle(fontSize: 25),
            ),
            const SizedBox(
              height: 25,
            ),
            const TimerWidget(),
            const SizedBox(
              height: 25,
            ),
            const Buttons(),
            const SizedBox(
              height: 20,
            ),
            const Text('Rounds time in minute'),
            const TimeRound(),
            const SizedBox(
              height: 20,
            ),
            const Text('Rest time in seconds'),
            const TimeRest(),
            const SizedBox(
              height: 20,
            ),
            const Text('Rounds'),
            const Rounds(),
            Text(
              '${provider.currentRound} / ${provider.selectedRounds}',
              style: const TextStyle(fontSize: 25),
            )
          ],
        ),
      )),
    );
  }
}
