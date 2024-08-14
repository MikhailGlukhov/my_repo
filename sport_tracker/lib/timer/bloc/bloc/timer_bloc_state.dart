part of 'timer_bloc_bloc.dart';

@freezed
class TimerState with _$TimerState {
  const factory TimerState.initial() = Initial;
  const factory TimerState.selected() = TumerSelectedState;
}
