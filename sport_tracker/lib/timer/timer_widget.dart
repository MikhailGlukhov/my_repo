import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:sport_tracker/routes/routes_name.dart';

import 'package:sport_tracker/timer_select/timer_service.dart';

class TimerWidget extends StatelessWidget {
  const TimerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TimerService>(context);
    final bool isFinished = provider.currentRound == provider.selectedRound &&
        provider.currentDurationRound == 0;
        

    return Scaffold(
        appBar: AppBar(),
        body: !isFinished
            ? Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      provider.currentState,
                      style: const TextStyle(fontSize: 35),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      height: 200,
                      width: 200,
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          CircularProgressIndicator(
                            value: provider.currentState == 'WORKOUT'
                                ? provider.currentDurationRound /
                                    provider.selectedTimeRound
                                : provider.currentDurationRound /
                                    provider.selectedTimeRest,
                            strokeWidth: 10,
                            color: provider.currentState == 'WORKOUT'
                                ? Colors.red
                                : Colors.green,
                          ),
                          Center(
                              child: Text(
                            '${provider.currentDurationRound}',
                            style: const TextStyle(
                                fontSize: 40, fontWeight: FontWeight.w600),
                          )),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15),
                    const ButtonsWidget(),
                    const SizedBox(
                      height: 25,
                    ),
                    Text(
                      '${provider.currentRound}/${provider.selectedRound}',
                      style: const TextStyle(fontSize: 35),
                    )
                  ],
                ),
              )
            : Center(
              child: Column(
                 
                  children: [
                      Text(provider.currentState = 'FINISH'),
                      const SizedBox(
                        height: 30,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            provider.stopTimer();
                            context.pushReplacementNamed(RoutesName.trackerScreenName);
                          },
                          child: const Text('Close'))
                    ]),
            ));
  }
}

class ButtonsWidget extends StatefulWidget {
  const ButtonsWidget({
    super.key,
  });

  @override
  State<ButtonsWidget> createState() => _ButtonsWidgetState();
}

class _ButtonsWidgetState extends State<ButtonsWidget> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TimerService>(context);
    final bool isCompleted =
        provider.currentDurationRound == provider.selectedTimeRound ||
            provider.selectedTimeRound == 0;
    final isStarted = provider.timer == null ? false : provider.timer?.isActive;
    final finished = provider.selectedRound == provider.currentRound;
    return  finished ? ElevatedButton(onPressed: (){provider.reset();}, child: Text('Restart')) :
    isStarted! || !isCompleted
        ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                  onPressed: () {
                    if (isStarted) {
                      provider.stopTimer(reset: false);
                    } else {
                      provider.startTimerRound(reset: false);
                    }
                  },
                  child:
                      isStarted ? const Text('Pause') : const Text('Resume')),
              ElevatedButton(
                  onPressed: () {
                    provider.reset();
                  },
                  child: const Text('Cancel'))
            ],
          )
        : ElevatedButton(
            onPressed: () {
              provider.startTimerRound();
            },
            child: const Text('Start Workout'));
  }
}
