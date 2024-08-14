part of 'timer_bloc_bloc.dart';

@freezed
class TimerBlocEvent with _$TimerBlocEvent {
  
  const factory TimerBlocEvent.selecteTimeRound(int value) = TimerRoundTimeSelectEvent;
  const factory TimerBlocEvent.selecteTimeRest(int value) = TimerRestTimeSelectEvent;
  const factory TimerBlocEvent.selecteRounds(int value) = TimerRoundsSelectEvent;
}