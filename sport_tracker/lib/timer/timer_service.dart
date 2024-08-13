import 'dart:async';

class TimerService{
  Timer? timer;
  int currentDurationRound = 120;
  int selectedTimeRound = 2;
  int selectedTimeRest = 30;
  int currentDurationRest = 30;
  int selectedRound = 3;
  int currentRound = 0;
  String currentState = 'WORKOUT';

  void selectTimeRound(int seconds){
    selectedTimeRound = seconds;
    currentDurationRound = seconds;
  }

  void selectTimeRest(int seconds){
    selectedTimeRest = seconds;
    currentDurationRest = seconds;
  }

  void selectRound(int round){
    selectedRound = round;
  }

}