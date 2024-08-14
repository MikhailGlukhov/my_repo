

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sport_tracker/timer_select/timer_service.dart';

part 'timer_select_bloc_event.dart';
part 'timer_select_bloc_state.dart';
part 'timer_select_bloc_bloc.freezed.dart';

class TimerSelectBloc extends Bloc<TimerSelectEvent, TimerSelectState> {
  final TimerService time;
  TimerSelectBloc(this.time) : super(const Initial()) {
    on<TimerRoundTimeSelectEvent>((event, emit) {
      time.selectedTimeRound = event.value;
      time.currentDurationRound = event.value;
      TimerService().selectTimeRound(event.value);
      
      
      emit(const TimerSelectedState());
    });

    on<TimerRestTimeSelectEvent>((event, emit) {
      time.selectedTimeRest = event.value;
      time.currentDurationRest = event.value;
      TimerService().selectTimeRest(event.value);
      
      
      emit(const TimerSelectedState());
    });

    on<TimerRoundsSelectEvent>((event, emit) {
      time.selectedRound = event.value;
      TimerService().selectRound(event.value);
      
      
      emit(const TimerSelectedState());
    });

     
     
  }
}
