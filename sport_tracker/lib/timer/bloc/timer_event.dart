part of 'timer_bloc.dart';

@freezed
class TimerEvent with _$TimerEvent {
  const factory TimerEvent.started() = TimerStartEvent;
  const factory TimerEvent.pause() = TimerPauseEvent;
  const factory TimerEvent.resume() = TimerResumeEvent;
  const factory TimerEvent.reset() = TimerResetEvent;
  const factory TimerEvent.tick(int duration) = TimerTickEvent;
}