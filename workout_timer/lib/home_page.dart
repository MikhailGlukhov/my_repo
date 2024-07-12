

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:workout_timer/time_list.dart';
import 'package:workout_timer/time_servise.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  
  @override
  Widget build(BuildContext context) {
    final provider =  Provider.of<TimeServise>(context);
    final isRunning = provider.timer == null ? false : provider.timer?.isActive;
    final isCompleted = provider.currentDurationRound == provider.selectedTimeRound || provider.selectedTimeRound == 0;
    return Scaffold(
      body: Center(
          child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TimerWidget(),
            const SizedBox(
              height: 25,
            ),
            isRunning! || !isCompleted
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
                    child: const Text('Start workout')),
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
            const Rounds()
          ],
        ),
      )),
    );
  }
}

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

class TimeRest extends StatelessWidget {
  const TimeRest({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TimeServise>(context);

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: secondsRest.map((time) {
          return InkWell(
            onTap: () => provider.selectTimeRest(int.parse(time)),
            child: Container(
              margin: const EdgeInsets.only(left: 12),
              width: 70,
              height: 50,
              decoration: int.parse(time) == provider.selectedTimeRest
                  ? BoxDecoration(
                      color: Colors.white38,
                      borderRadius: BorderRadius.circular(5))
                  : BoxDecoration(
                      border: Border.all(width: 2, color: Colors.white38),
                      borderRadius: BorderRadius.circular(5)),
              child: Center(
                  child: Text(
                (int.parse(time)).toString(),
                style: TextStyle(
                    color: int.parse(time) == provider.selectedTimeRest
                        ? Colors.black
                        : Colors.white),
              )),
            ),
          );
        }).toList(),
      ),
    );
  }
}

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
