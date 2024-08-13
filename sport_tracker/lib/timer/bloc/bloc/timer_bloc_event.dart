part of 'timer_bloc_bloc.dart';

@freezed
class TimerBlocEvent with _$TimerBlocEvent {
  
  const factory TimerBlocEvent.select(int value) = TimerSelectEvent;
}