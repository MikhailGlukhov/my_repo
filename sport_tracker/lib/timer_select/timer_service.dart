import 'dart:async';

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';


class TimerService  extends ChangeNotifier{
  Timer? timer;
  int currentDurationRound = 120;
  int selectedTimeRound = 2;
  int selectedTimeRest = 30;
  int currentDurationRest = 30;
  int selectedRound = 3;
  int currentRound = 0;
  String currentState = 'WORKOUT';
  final player = AudioPlayer();

  void selectTimeRound(int seconds) {
    selectedTimeRound = seconds;
    currentDurationRound = seconds;
    notifyListeners();
  }

  void selectTimeRest(int seconds) {
    selectedTimeRest = seconds;
    currentDurationRest = seconds;
    notifyListeners();
  }

  void selectRound(int round) {
    selectedRound = round;
    notifyListeners();
  }

  void resetTimerRound() {
    selectedTimeRound = currentDurationRound;
    notifyListeners();
    
  }

  void startTimerRound({bool reset = true}) {
    if (reset) {
      resetTimerRound();
    }
    timer = Timer.periodic(const Duration(seconds: 1), (_) {
      if (currentDurationRound == 0.0) {
        playSound();
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

  void reset() {
    timer?.cancel();
    currentState = 'WORKOUT';
    currentDurationRound = selectedTimeRound;
    currentRound = 0;
    notifyListeners();
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
      
      stopTimer();
    }
    notifyListeners();
  }

  Future<void> playSound() async{
     String audioPath = 'audio/ring.mp3';
     await player.play(AssetSource(audioPath));
  }

 
}
