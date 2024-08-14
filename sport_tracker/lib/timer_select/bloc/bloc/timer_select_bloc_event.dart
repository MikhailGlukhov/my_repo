part of 'timer_select_bloc_bloc.dart';

@freezed
class TimerSelectEvent with _$TimerSelectEvent {
  
  const factory TimerSelectEvent.selecteTimeRound(int value) = TimerRoundTimeSelectEvent;
  const factory TimerSelectEvent.selecteTimeRest(int value) = TimerRestTimeSelectEvent;
  const factory TimerSelectEvent.selecteRounds(int value) = TimerRoundsSelectEvent;

}