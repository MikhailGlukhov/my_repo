import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:workout_timer/time_list.dart';
import 'package:workout_timer/servise/time_servise.dart';

class TimeRound extends StatelessWidget {
  const TimeRound({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TimeServise>(context);
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
            children: secondsRound.map((time) {
          return InkWell(
            onTap: () => provider.selectTimeRound(double.parse(time)),
            child: Container(
              margin: const EdgeInsets.only(left: 12),
              width: 70,
              height: 50,
              decoration: double.parse(time) == provider.selectedTimeRound
                  ? BoxDecoration(
                      color: Colors.white38,
                      borderRadius: BorderRadius.circular(5))
                  : BoxDecoration(
                      border: Border.all(width: 2, color: Colors.white38),
                      borderRadius: BorderRadius.circular(5)),
              child: Center(
                child: Text(
                  (double.parse(time) / 60).toString(),
                  style: TextStyle(
                      color: double.parse(time) == provider.selectedTimeRound
                          ? Colors.black
                          : Colors.white),
                ),
              ),
            ),
          );
        }).toList()));
  }
}
