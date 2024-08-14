import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sport_tracker/timer/bloc/timer_bloc.dart';
import 'package:sport_tracker/timer_select/bloc/bloc/timer_select_bloc_bloc.dart';

class TimerWidget extends StatefulWidget {
  const TimerWidget({super.key});

  @override
  State<TimerWidget> createState() => _TimerWidgetState();
}

class _TimerWidgetState extends State<TimerWidget> {
  @override
  void didChangeDependencies() {
    context.read<TimerBloc>().timerService.currentDurationRound;
    super.didChangeDependencies();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Timer'),
      ),
      body: BlocBuilder<TimerBloc, TimerState>(
        buildWhen: (prev, state) => prev.runtimeType != state.runtimeType,
        builder: (context, state) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 200,
                width: 200,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    CircularProgressIndicator(),
                    Center(
                        child: Text(
                     // '${context.read<TimerBloc>().timerService.currentDurationRound.}',
                      context.select((TimerBloc bloc) => bloc.timerService.currentDurationRound.floor().toString()),
                      style: TextStyle(fontSize: 40),
                    ))
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        context
                            .read<TimerBloc>()
                            .add(const TimerEvent.started());
                      },
                      child: Text('Start')),
                  ElevatedButton(
                      onPressed: () {
                        context
                            .read<TimerBloc>()
                            .add(const TimerEvent.pause());
                      },
                      child: Text('Pause'))
                ],
              )
            ],
          );
        },
      ),
    );
  }
}

/*class TimerWidget extends StatelessWidget {
  const TimerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final _timerBloc = context.read<TimerBloc>();
    final bool isFinished =
        _timerBloc.time.currentRound == _timerBloc.time.selectedRound &&
            _timerBloc.time.currentDurationRound == 0;

    return BlocListener<TimerBloc, TimerState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: _timerBloc.time.currentState == 'WORKOUT'
                ? const Text('WORKOUT')
                : const Text('REST'),
          ),
          body: !isFinished
              ? Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 200,
                        width: 200,
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            CircularProgressIndicator(
                              value: _timerBloc.time.currentState ==
                                      'WORKOUT'
                                  ? _timerBloc.time.currentDurationRound /
                                      _timerBloc.time.selectedTimeRound
                                  : _timerBloc.time.currentDurationRound /
                                      _timerBloc.time.selectedTimeRest,
                              strokeWidth: 10,
                              color:
                                  _timerBloc.time.currentState == 'WORKOUT'
                                      ? Colors.red
                                      : Colors.green,
                            ),
                            Center(
                                child: Text(
                              '${_timerBloc.time.currentDurationRound}',
                              style: const TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.w600),
                            )),
                          ],
                        ),
                      ),
                      const SizedBox(height: 15),
                      ButtonsWidget()
                    ],
                  ),
                )
              : const Center(child: Text('FINISH'))),
    );
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
    final _timerBloc = context.read<TimerBloc>();
    final bool isCompleted = _timerBloc.time.currentDurationRound ==
            _timerBloc.time.selectedTimeRound ||
        _timerBloc.time.selectedTimeRound == 0;
    final isStarted =
        _timerBloc.time.timer == null ? false : _timerBloc.time.timer?.isActive;
    return isStarted! || !isCompleted
        ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (isStarted) {
                        _timerBloc.add(const TimerBlocEvent.stopTimer(false));
                      } else {
                        _timerBloc.add(const TimerBlocEvent.startTimer(false));
                      }
                    });
                  },
                  child:
                      isStarted ? const Text('Pause') : const Text('Resume')),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _timerBloc.add(const TimerBlocEvent.resetTimer());
                    });
                  },
                  child: const Text('Cancel'))
            ],
          )
        : ElevatedButton(
            onPressed: () {
              
                _timerBloc.add(const TimerBlocEvent.startTimer(false));
              
            },
            child: const Text('Start Workout'));
  }
}*/
