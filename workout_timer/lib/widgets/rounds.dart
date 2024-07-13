import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:workout_timer/time_list.dart';
import 'package:workout_timer/servise/time_servise.dart';

class Rounds extends StatelessWidget {
  const Rounds({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TimeServise>(context);

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: roundsCount.map((round) {
        return InkWell(onTap: () => provider.selectRound(int.parse(round)),
          child: Container(
            margin: const EdgeInsets.only(left: 12),
            width: 70,
            height: 50,
            decoration: int.parse(round) == provider.selectedRounds
                ? BoxDecoration(
                    color: Colors.white38, borderRadius: BorderRadius.circular(5))
                : BoxDecoration(
                    border: Border.all(width: 2, color: Colors.white38),
                    borderRadius: BorderRadius.circular(5)),
            child: Center(
                child: Text(
              (int.parse(round)).toString(),
              style: TextStyle(
                  color: int.parse(round) == provider.selectedRounds
                      ? Colors.black
                      : Colors.white),
            )),
          ),
        );
      }).toList()),
    );
  }
}