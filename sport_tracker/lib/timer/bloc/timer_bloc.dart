



import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:sport_tracker/timer_select/timer_service.dart';

part 'timer_bloc.freezed.dart';
part 'timer_event.dart';
part 'timer_state.dart';

class TimerBloc extends Bloc<TimerEvent, TimerState> {

  TimerService timerService;
  TimerBloc(
    
    this.timerService,
  ) : super(const TimerInitialState()) {
    on<TimerStartEvent>((event, emit) {
   
   
      
      timerService.startTimerRound();
      emit(const TimerState.inProgress());
    });
    on<TimerPauseEvent>((event, emit) {
      timerService.stopTimer();
      emit(const TimerState.pause());
    });
    on<TimerResumeEvent>((event, emit) {
      timerService.resetTimerRound();
      emit(const TimerState.inProgress());
    });
    on<TimerTickEvent>((event, emit) {
      timerService.startTimerRound();
      timerService.moveToNextRound();
      emit(const TimerState.completed());
    });
  }
}
