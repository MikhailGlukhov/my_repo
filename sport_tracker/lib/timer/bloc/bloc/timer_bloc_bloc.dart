import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sport_tracker/timer/timer_service.dart';

part 'timer_bloc_event.dart';
part 'timer_bloc_state.dart';
part 'timer_bloc_bloc.freezed.dart';

class TimerBloc extends Bloc<TimerBlocEvent, TimerState> {
  final TimerService time;
  TimerBloc(this.time) : super(const Initial()) {
    on<TimerSelectEvent>((event, emit) {
      time.selectedTimeRound = event.value;
      TimerService().selectTimeRound(event.value);
      
      
      emit(const Selected());
    });
     
  }
}
