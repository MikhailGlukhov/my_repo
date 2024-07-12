import 'dart:async';

import 'package:flutter/material.dart';

class TimeServise extends ChangeNotifier{
  Timer? timer;
  double currentDurationRound = 120;
  double selectedTimeRound = 120;
  int currentDurationRest = 30;
  int selectedTimeRest = 30;
  int selectedRounds = 3;
  int currentRound = 3;

  void selectTimeRound(double seconds){
    selectedTimeRound = seconds;
    currentDurationRound = seconds;
    notifyListeners();
  }
  
  void selectTimeRest(int second){
    currentDurationRest = second;
    selectedTimeRest = second;
    notifyListeners();
  }

  void selectRound(int rounds){
    selectedRounds = rounds;
    currentRound = rounds;
    notifyListeners();
  }

  void resetTimerRound() {
    
       selectedTimeRound = currentDurationRound ;
    notifyListeners();
    
  }

  void startTimerRound({bool reset = true}) {
    if (reset) {
      resetTimerRound();
    }
    timer = Timer.periodic(const Duration(seconds: 1), (_) {
      if (currentDurationRound > 0) {
      
          currentDurationRound--;
        
      } else {
        stopTimer(reset: false);
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
}