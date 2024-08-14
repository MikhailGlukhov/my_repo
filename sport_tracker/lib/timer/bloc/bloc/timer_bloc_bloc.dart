

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sport_tracker/timer/timer_service.dart';

part 'timer_bloc_event.dart';
part 'timer_bloc_state.dart';
part 'timer_bloc_bloc.freezed.dart';

class TimerBloc extends Bloc<TimerBlocEvent, TimerState> {
  final TimerService time;
  TimerBloc(this.time) : super(const Initial()) {
    on<TimerRoundTimeSelectEvent>((event, emit) {
      time.selectedTimeRound = event.value;
      time.currentDurationRound = event.value;
      TimerService().selectTimeRound(event.value);
      
      
      emit(const TumerSelectedState());
    });

    on<TimerRestTimeSelectEvent>((event, emit) {
      time.selectedTimeRest = event.value;
      time.currentDurationRest = event.value;
      TimerService().selectTimeRest(event.value);
      
      
      emit(const TumerSelectedState());
    });

    on<TimerRoundsSelectEvent>((event, emit) {
      time.selectedRound = event.value;
      TimerService().selectRound(event.value);
      
      
      emit(const TumerSelectedState());
    });

    //  on<TimerStartEvent>((event, emit) {
     
      
      
    //   TimerService().startTimerRound();
      
      
    //   emit(const TumerSelectedState());
    // });
    on<TimerStartEvent>(startTimerRound);

     on<TimerStopEvent>((event, emit) {
     
      
      TimerService().stopTimer();
      
      
      emit(const TumerSelectedState());
    });

     on<TimerResetEvent>((event, emit) {
    
      
      TimerService().reset();
      
      
      emit(const TumerSelectedState());
    });
     
  }

    void startTimerRound(event, emit ) {
    if (event.reset) {
     TimerService().resetTimerRound();
    }
    TimerService().timer = Timer.periodic(const Duration(seconds: 1), (_) {
      if (TimerService().currentDurationRound == 0.0) {
        TimerService().moveToNextRound();
      } else {
        TimerService().currentDurationRound--;
      }
    });
    emit(const TumerSelectedState());
  }

}
