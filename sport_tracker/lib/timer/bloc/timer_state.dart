part of 'timer_bloc.dart';

@freezed
class TimerState with _$TimerState {
  const factory TimerState.initial() = TimerInitialState;
  const factory TimerState.inProgress() = TimerInProgressState;
  const factory TimerState.pause() = TimerPauseState;
  const factory TimerState.completed() = TimerCompletedState;
}
