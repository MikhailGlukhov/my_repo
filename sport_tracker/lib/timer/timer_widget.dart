import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sport_tracker/timer/bloc/bloc/timer_bloc_bloc.dart';

class TimerWidget extends StatelessWidget {
  const TimerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final _timerBloc = context.read<TimerBloc>();
    final bool isFinished =
        _timerBloc.time.currentRound == _timerBloc.time.selectedRound &&
            _timerBloc.time.currentDurationRound == 0;
   
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: _timerBloc.time.currentState == 'WORKOUT'
              ? const Text('WORKOUT')
              : const Text('REST'),
        ),
        body: !isFinished
            ? Center(
                child: Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 200,
                      width: 200,
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          CircularProgressIndicator(
                            value: _timerBloc.time.currentState == 'WORKOUT'
                                ? _timerBloc.time.currentDurationRound /
                                    _timerBloc.time.selectedTimeRound
                                : _timerBloc.time.currentDurationRound /
                                    _timerBloc.time.selectedTimeRest,
                            strokeWidth: 10,
                            color: _timerBloc.time.currentState == 'WORKOUT'
                                ? Colors.red
                                : Colors.green,
                          ),
                          Center(
                              child: Text(
                            '${_timerBloc.time.currentDurationRound}',
                            style: const TextStyle(
                                fontSize: 40, fontWeight: FontWeight.w600),
                          )),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15),
                    ButtonsWidget()
                  ],
                ),
              )
            : const Center(child: Text('FINISH')));
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
      final bool isCompleted =
        _timerBloc.time.currentDurationRound == _timerBloc.time.selectedTimeRound ||
            _timerBloc.time.selectedTimeRound == 0;
    final  isStarted = _timerBloc.time.timer == null ? false : _timerBloc.time.timer?.isActive;
    return isStarted! || !isCompleted ?
     Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ElevatedButton(onPressed: () {setState(() {
           if(isStarted){
            _timerBloc.add(const TimerBlocEvent.stopTimer(false));
            }
            else {
              _timerBloc.add(const TimerBlocEvent.startTimer(false));
            }
        });
         
        }, child: isStarted ? const Text('Pause') : const Text('Resume')),
        ElevatedButton(onPressed: () {
          setState(() {
            _timerBloc.add(const TimerBlocEvent.resetTimer());
          });
          
        }, child: const Text('Cancel'))
      ],
    ) : ElevatedButton(onPressed: (){ setState(() {
      _timerBloc.add(const TimerBlocEvent.startTimer(false));
    });
      
    }, child: const Text('Start Workout')) ;
  }
}
