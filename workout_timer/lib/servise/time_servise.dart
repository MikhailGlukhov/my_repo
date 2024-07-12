import 'dart:async';

import 'package:flutter/material.dart';

class TimeServise extends ChangeNotifier {
  Timer? timer;
  double currentDurationRound = 120;
  double selectedTimeRound = 120;
  double selectedTimeRest = 30;
  double currentDurationRest = 30;
  int selectedRounds = 3;
  int currentRound = 0;
  String currentState = 'WORKOUT';

  void selectTimeRound(double seconds) {
    selectedTimeRound =  seconds;
    currentDurationRound = seconds;
    notifyListeners();
  }

  void selectTimeRest(double second) {
    currentDurationRest = second;
    selectedTimeRest =   second;
    notifyListeners();
  }

  void selectRound(int rounds) {
    selectedRounds = rounds;
   
    notifyListeners();
  }

  void resetTimerRound() {
    selectedTimeRound =  currentDurationRound;
    notifyListeners();
  }

  void startTimerRound({bool reset = true}) {
    if (reset) {
      resetTimerRound();
    }
    timer = Timer.periodic(const Duration(seconds: 1), (_) {
      
             
     if (currentDurationRound == 0.0 ) {
        moveToNextRound();
      } else {
        currentDurationRound--;
      }
      notifyListeners();
    });
  }

  void stopTimer({bool reset = true}) {
    if (reset) {
      resetTimerRound();
    }

    timer?.cancel();
    notifyListeners();
  }

  void reset(){
    timer?.cancel();
    currentState = 'WORKOUT';
    currentDurationRound = selectedTimeRound;
    currentRound = 0;
    notifyListeners();

  }

  void moveToNextRound(){
    if(currentState == 'WORKOUT'){
      currentState = 'REST';
      currentDurationRound = selectedTimeRest;
     // currentDurationRound = currentDurationRest ;
      currentRound++;
    } else if (currentState == 'REST'){
      currentState = 'WORKOUT';
      currentDurationRound = selectedTimeRound;
     // selectedTimeRound =selectedTimeRest;
    } /*else if (currentState == 'WORKOUT' && currentRound == selectedRounds){
      currentState = 'FINISH';
      currentDurationRound = currentDurationRound;
      currentRound++;
     
    } else if(currentState == 'FINISH'){
      currentState = 'WORKOUT';
      currentDurationRound = currentDurationRound;
      currentRound = 0;
    }*/ else if(currentState == 'FINISH'){
      timer?.cancel();
      
    }
    notifyListeners();
  }
}
