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
    return SizedBox(
      height: 200,
      width: 200,
      child: Stack(
        fit: StackFit.expand,
        children: [
          CircularProgressIndicator(
            value: provider.currentDurationRound / provider.selectedTimeRound,
            strokeWidth: 10,
            color: Colors.red,
            backgroundColor: Colors.white,
          ),
          Center(
            child: Text(
              '${provider.currentDurationRound}',
              style: const TextStyle(fontSize: 40),
            ),
          ),
        ],
      ),
    );
  }
}