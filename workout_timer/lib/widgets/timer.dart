import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:workout_timer/servise/time_servise.dart';

class TimerWidget extends StatelessWidget {
  const TimerWidget({
    super.key,
   
  });

 

  @override
  Widget build(BuildContext context) {
    final provider =  Provider.of<TimeServise>(context);
    final isFinish = provider.currentRound == provider.selectedRounds && provider.currentDurationRound == 0;
    return !isFinish ? SizedBox(
      height: 200,
      width: 200,
      child: Stack(
        fit: StackFit.expand,
        children: [
          CircularProgressIndicator(
            value: provider.currentState == 'WORKOUT' ? provider.currentDurationRound / provider.selectedTimeRound : provider.currentDurationRound/provider.selectedTimeRest,
            strokeWidth: 10,
            color: provider.currentState == 'WORKOUT' ? Colors.red : Colors.green,
            backgroundColor: Colors.white,
          ),
          Center(
            child: Text(
              '${provider.currentDurationRound.toInt()}',
              style: const TextStyle(fontSize: 40),
            ),
          ),
        ],
      ),
    ) :  Text(provider.currentState = 'FINISH');
  }
}