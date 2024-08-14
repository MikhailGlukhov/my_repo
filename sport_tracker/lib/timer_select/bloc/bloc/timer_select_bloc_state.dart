part of 'timer_select_bloc_bloc.dart';

@freezed
class TimerSelectState with _$TimerSelectState {
  const factory TimerSelectState.initial() = Initial;
  const factory TimerSelectState.selected() = TimerSelectedState;
  
}
