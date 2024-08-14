import 'dart:async';

class TimerService {
  Timer? timer;
  int currentDurationRound = 120;
  int selectedTimeRound = 2;
  int selectedTimeRest = 30;
  int currentDurationRest = 30;
  int selectedRound = 3;
  int currentRound = 0;
  String currentState = 'WORKOUT';

  void selectTimeRound(int seconds) {
    selectedTimeRound = seconds;
    currentDurationRound = seconds;
  }

  void selectTimeRest(int seconds) {
    selectedTimeRest = seconds;
    currentDurationRest = seconds;
  }

  void selectRound(int round) {
    selectedRound = round;
  }

  void resetTimerRound() {
    selectedTimeRound = currentDurationRound;
    
  }

  void startTimerRound({bool reset = true}) {
    if (reset) {
      resetTimerRound();
    }
    timer = Timer.periodic(const Duration(seconds: 1), (_) {
      if (currentDurationRound == 0.0) {
        moveToNextRound();
      } else {
        currentDurationRound--;
      }
    });
  }

  void stopTimer({bool reset = true}) {
    if (reset) {
      resetTimerRound();
    }

    timer?.cancel();
  }

  void reset() {
    timer?.cancel();
    currentState = 'WORKOUT';
    currentDurationRound = selectedTimeRound;
    currentRound = 0;
  }

  void moveToNextRound() {
    if (currentState == 'WORKOUT') {
      currentState = 'REST';
      currentDurationRound = selectedTimeRest;

      currentRound++;
    } else if (currentState == 'REST') {
      currentState = 'WORKOUT';
      currentDurationRound = selectedTimeRound;
    } else if (currentState == 'FINISH') {
      timer?.cancel();
    }
  }
}
