part of 'example_bloc.dart';

sealed class ExampleEvent {
  const ExampleEvent();
}

final class TimerStarted extends ExampleEvent {
  const TimerStarted({required this.duration});
  final int duration;
}

final class TimerPaused extends ExampleEvent {
  const TimerPaused();
}

final class TimerResumed extends ExampleEvent {
  const TimerResumed();
}

class TimerReset extends ExampleEvent {
  const TimerReset();
}

class _TimerTicked extends ExampleEvent {
  const _TimerTicked({required this.duration});
  final int duration;
}