import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:workout_timer/servise/time_servise.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
       final provider =  Provider.of<TimeServise>(context);
    final isRunning = provider.timer == null ? false : provider.timer?.isActive;
    final isCompleted = provider.currentDurationRound == provider.selectedTimeRound || provider.selectedTimeRound == 0;
    return  isRunning! || !isCompleted
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            if (isRunning) {
                              provider.stopTimer(reset: false);
                            } else {
                              provider.startTimerRound(reset: false);
                            }
                          },
                          child: isRunning
                              ? const Text('Pause')
                              : const Text('Resume')),
                      ElevatedButton(
                          onPressed: () {
                            provider.stopTimer();
                          },
                          child: const Text('Cancel')),
                    ],
                  )
                : ElevatedButton(
                    onPressed: () {
                      provider.startTimerRound();
                    },
                    child: const Text('Start workout'));
  }
}